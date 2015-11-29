package project.service;

import project.persistence.entities.Article;
import project.persistence.entities.Category;
import project.persistence.entities.Keyword;
import project.persistence.entities.User2;

import java.util.List;
import java.util.Set;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
public interface ArticleService {

    /**
     * Save a {@link Article}
     * @param article {@link Article} to be saved
     * @return {@link Article} that was saved
     */
    Article save(Article article);

    /**
     * Delete {@link Article}
     * @param article {@link Article} to be deleted
     */
    void delete(Article article);

    /**
     * Get all {@link Article}
     * @return A list of {@link Article}s
     */
    List<Article> findAll();


    /**
     * Find a {@link Article} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Article} with {@link Long id}
     */
    Article findOne(Long id);

    /**
     * Find all {@link Article}s with {@link String title}
     * @param title {@link String}
     * @return All {@link Article}s with the {@link String title} passed
     */
    List<Article> findByTitle(String title);

    /**
     * Find all {@link Article}s with {@link Set<Keyword> keywords}
     * @param keywords {@link Set<Keyword>}
     * @return All {@link Article}s that contain the {@link Set<Keyword> keywords}
     */
    List<Article> findByKeywords(Set<Keyword> keywords);

    /**
     * Find all {@link Article}s with {@link Set<Category> catagories}
     * @param categories {@link Set<Category>}
     * @return All {@link Article}s with the {@link Set<Category> categories}
     */
    List<Article> findByCategories(Set<Category> categories);

    /**
     * Find all {@link Article}s with {@link User2 author}
     * @param author {@link User2}
     * @return All {@link Article}s with the {@link User2 author}
     */
    List<Article> findByAuthor(User2 author);
}