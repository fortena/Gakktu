package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Post;
import project.persistence.repositories.ForumRepository;
import project.service.ForumService;

import java.util.List;
import java.util.Set;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Service
public class ForumServiceImplementation implements ForumService{


    // Instance Variables
    ForumRepository repository;

    // Dependency Injection
    @Autowired
    public ForumServiceImplementation(ForumRepository repository) {
        this.repository = repository;
    }

    @Override
    public Post save(Post post) {
        return repository.save(post);
    }

    @Override
    public void delete(Post post) {
        repository.delete(post);
    }

    @Override
    public List<Post> findAll() {
        return repository.findAll();
    }


    @Override
    public Post findOne(Long id) {
        return repository.findOne(id);
    }

    @Override
    public List<Post> findByTitle(String title) {
        return repository.findByTitle(title);
    }

}