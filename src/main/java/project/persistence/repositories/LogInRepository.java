package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.User2;

import java.util.List;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface LogInRepository extends JpaRepository<User2, Long> {

    User2 save(User2 user);

    void delete(User2 user);

    List<User2> findAll();

    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
    @Query(value = "SELECT p FROM User2 p where length(p.name) >= 3 ")
    List<User2> findAllWithNameLongerThan3Chars();

   @Query(value="SELECT p.password FROM User2 p where p.name = name")
   String findPassword(String name);

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<User2> findAllByOrderByIdDesc();

    User2 findOne(Long id);

    List<User2> findByName(String name);

}