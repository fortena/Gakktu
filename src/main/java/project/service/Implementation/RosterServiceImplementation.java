package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.User2;
import project.persistence.repositories.UserRepository;
import project.service.UserService;
import project.service.RosterService;
import project.persistence.repositories.RosterRepository;

import java.util.Collections;
import java.util.List;

@Service
public class RosterServiceImplementation implements RosterService {

    // Instance Variables
    RosterRepository repository;

    // Dependency Injection
    @Autowired
    public RosterServiceImplementation(RosterRepository repository) {
        this.repository = repository;
    }

    @Override
    public User2 save(User2 user) {
        return repository.save(user);
    }

    @Override
    public void delete(User2 user) {
        repository.delete(user);
    }

    @Override
    public List<User2> findAll() {
        return repository.findAll();
    }

    @Override
    public List<User2> findAllReverseOrder() {
        // Get all the Postit notes
        List<User2> users = repository.findAll();

        // Reverse the list
        Collections.reverse(users);

        return users;
    }

    @Override
    public User2 findOne(Long id) {
        return repository.findOne(id);
    }

    @Override
    public List<User2> findByName(String name) {
        return repository.findByName(name);
    }
}