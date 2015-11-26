package project.service;

import project.persistence.entities.User2;

import java.util.List;

public interface UserService {

    /**
     * Save a {@link User2}
     * @param postitNote {@link PostitNote} to be saved
     * @return {@link PostitNote} that was saved
     */
    User2 save(User2 user);

    /**
     * Delete {@link PostitNote}
     * @param postitNote {@link PostitNote} to be deleted
     */
    void delete(User2 user);

    /**
     * Get all {@link PostitNote}s
     * @return A list of {@link PostitNote}s
     */
    List<User2> findAll();

    /**
     * Get all {@link PostitNote}s in a reverse order
     * @return A reversed list of {@link PostitNote}s
     */
    List<User2> findAllReverseOrder();

    /**
     * Find a {@link PostitNote} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link PostitNote} with {@link Long id}
     */
    User2 findOne(Long id);

    /**
     * Find all {@link PostitNote}s with {@link String name}
     * @param name {@link String}
     * @return All {@link PostitNote}s with the {@link String name} passed
     */
    List<User2> findByName(String name);

}