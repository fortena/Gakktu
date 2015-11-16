package project.service;

import project.persistence.entities.Category;

import java.util.List;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
public interface CategoryService {

    /**
     * Save a {@link Category}
     * @param category {@link Category} to be saved
     * @return {@link Category} that was saved
     */
    Category save(Category category);

    /**
     * Delete {@link Category}
     * @param category {@link Category} to be deleted
     */
    void delete(Category category);

    /**
     * Get all {@link Category}s
     * @return A list of {@link Category}s
     */
    List<Category> findAll();

    /**
     * Get all {@link Category}s in a reverse order
     * @return A reversed list of {@link Category}s
     */
    List<Category> findAllReverseOrder();

    /**
     * Find a {@link Category} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Category} with {@link Long id}
     */
    Category findOne(Long id);

    /**
     * Find all {@link Category}s with {@link String name}
     * @param name {@link String}
     * @return All {@link Category}s with the {@link String name} passed
     */
    List<Category> findByName(String name);

}