package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import system.DAO.ArticleRepository;
import system.model.Article;
import system.service.ArticleService;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Map;

@Controller
public class ArticleController {
    @Autowired
    private ArticleRepository articleRepository;
    @Autowired
    private ArticleService service;

    @RequestMapping("/blog")
    public String showBlogPage(Model model, @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC, size = 1) Pageable pageable) {

        Page<Article> page = articleRepository.findAll(pageable);

        model.addAttribute("page", page);
        model.addAttribute("url", "/blog");
        return "blog";
    }

    @RequestMapping("/addArticle")
    public String addArticle() {

        return "addArticle";
    }

    @RequestMapping(value = "/addArticle/submit", method = RequestMethod.POST)
    public String saveArticle(@Valid Article article,
                              BindingResult bindingResult,
                              Model model,
                              @RequestParam("name") String name,
                              @RequestParam("file") MultipartFile file) throws IOException {
        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("article", article);
            return "addArticle";
        } else {
            article.setAuthorName(name);
            article.setPic(file.getBytes());
            article.setDate(System.currentTimeMillis());

            model.addAttribute("article", "");

            service.saveArticle(article);
        }

        return "redirect:/blog";
    }

    @RequestMapping(value = "/article={article_id}")
    public String showArticlePage(@PathVariable("article_id") Long articleID, Model model) {
        Article article = service.getArticleByID(articleID);
        model.addAttribute("article", article);
        return "article";
    }

    @RequestMapping(value = "/deleteArticle={article_id}")
    public String deleteArticle(@PathVariable(name = "article_id") Long articleID) {
        service.delete(articleID);
        return "redirect:/blog";
    }

    @RequestMapping(value = "/editArticle={article_id}")
    public String editArt(@PathVariable("article_id") Long articleID, Model model) {
        Article article = service.getArticleByID(articleID);
        model.addAttribute("article", article);
        return "articleEdit";
    }

    @RequestMapping(value = "/editArticle/submit", method = RequestMethod.POST)
    public String changeArticle(@Valid Article article,
                                BindingResult bindingResult,
                                Model model,
                                @RequestParam("file") MultipartFile file,
                                @RequestParam("article_id") Long articleID
    ) throws IOException {
        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            article.setId(articleID);

            model.mergeAttributes(errorsMap);
            model.addAttribute("article", article);


            return "articleEdit";
        } else {
            Article foundedArticle = service.getArticleByID(articleID);
            if (!file.isEmpty()) {
                foundedArticle.setPic(file.getBytes());
            }
            foundedArticle.setDate(System.currentTimeMillis());
            foundedArticle.setTitle(article.getTitle());
            foundedArticle.setContent(article.getContent());


            model.addAttribute("article", "");

            service.saveArticle(foundedArticle);
        }
        return "redirect:/blog";
    }
}
