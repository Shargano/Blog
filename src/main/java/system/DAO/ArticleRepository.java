package system.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import system.model.Article;


public interface ArticleRepository extends CrudRepository<Article, Integer> {

    Article findById(Long articleId);

    Page<Article> findAll(Pageable pageable);
}
