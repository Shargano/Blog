package system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.DAO.ArticleRepository;
import system.model.Article;

import java.util.Comparator;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class ArticleService {
    @Autowired
    private ArticleRepository repository;

    public void saveArticle(Article article) {
        repository.save(article);
    }

    public List<Article> getAll() {
        return StreamSupport
                .stream(Spliterators.spliteratorUnknownSize(repository.findAll().iterator(), Spliterator.NONNULL),
                        false)
                .sorted(Comparator.reverseOrder())
                .collect(Collectors.toList());
    }

    public void delete(Long articleId) {
        Article foundedArticle = repository.findById(articleId);
        repository.delete(foundedArticle);
    }

    public Article getArticleByID(Long id) {
        Article foundedArticle = repository.findById(id);
        return foundedArticle;
    }
}
