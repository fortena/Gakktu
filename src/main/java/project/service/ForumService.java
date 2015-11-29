package project.service;

import project.persistence.entities.Post;

import java.util.List;
import java.util.Set;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
public interface ForumService {

    /**
     * Save a {@link Post}
     * @param post {@link Post} to be saved
     * @return {@link Post} that was saved
     */
    Post save(Post post);

    /**
     * Delete {@link Post}
     * @param post {@link Post} to be deleted
     */
    void delete(Post post);

    /**
     * Get all {@link Post}
     * @return A list of {@link Post}s
     */
    List<Post> findAll();


    /**
     * Find a {@link Post} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Post} with {@link Long id}
     */
    Post findOne(Long id);

    /**
     * Find all {@link Post}s with {@link String title}
     * @param title {@link String}
     * @return All {@link Post}s with the {@link String title} passed
     */
    List<Post> findByTitle(String title);

}