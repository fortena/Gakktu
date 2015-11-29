package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.Article;
import project.persistence.entities.Category;
import project.persistence.entities.Keyword;
import project.persistence.entities.User2;

import java.util.List;
import java.util.Set;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface ArticleRepository extends JpaRepository<Article, Long> {

    Article save(Article article);

    void delete(Article article);

    List<Article> findAll();

    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
    @Query(value = "SELECT p FROM Article p where length(p.title) >= 3 ")
    List<Article> findAllWithNameLongerThan3Chars();

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<Article> findAllByOrderByIdDesc();

    Article findOne(Long id);

    List<Article> findByTitle(String title);

    List<Article> findByKeywords(Set<Keyword> keywords);

    List<Article> findByCategories(Set<Category> categories);

    List<Article> findByAuthor(User2 user2);
}
