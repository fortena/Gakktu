package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Category;
import project.persistence.repositories.CategoryRepository;
import project.service.CategoryService;

import java.util.Collections;
import java.util.List;

@Service
public class CategoryServiceImplementation implements CategoryService {

    // Instance Variables
    CategoryRepository repository;

    // Dependency Injection
    @Autowired
    public CategoryServiceImplementation(CategoryRepository repository) {
        this.repository = repository;
    }

    @Override
    public Category save(Category category) {
        return repository.save(category);
    }

    @Override
    public void delete(Category category) {
        repository.delete(category);
    }

    @Override
    public List<Category> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Category> findAllReverseOrder() {
        // Get all the Postit notes
        List<Category> categories = repository.findAll();

        // Reverse the list
        Collections.reverse(categories);

        return categories;
    }

    @Override
    public Category findOne(Long id) {
        return repository.findOne(id);
    }

    @Override
    public List<Category> findByName(String name) {
        return repository.findByName(name);
    }
}
