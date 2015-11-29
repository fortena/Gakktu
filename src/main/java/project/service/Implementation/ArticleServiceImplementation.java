package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Article;
import project.persistence.entities.Keyword;
import project.persistence.entities.Category;
import project.persistence.entities.User2;
import project.persistence.repositories.ArticleRepository;
import project.service.ArticleService;

import java.util.List;
import java.util.Set;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Service
public class ArticleServiceImplementation implements ArticleService{


    // Instance Variables
    ArticleRepository repository;

    // Dependency Injection
    @Autowired
    public ArticleServiceImplementation(ArticleRepository repository) {
        this.repository = repository;
    }

    @Override
    public Article save(Article article) {
        return repository.save(article);
    }

    @Override
    public void delete(Article article) {
        repository.delete(article);
    }

    @Override
    public List<Article> findAll() {
        return repository.findAll();
    }


    @Override
    public Article findOne(Long id) {
        return repository.findOne(id);
    }

    @Override
    public List<Article> findByTitle(String title) {
        return repository.findByTitle(title);
    }

    @Override
    public List<Article> findByKeywords(Set<Keyword> keywords) {
        return repository.findByKeywords(keywords);
    }

    @Override
    public List<Article> findByCategories(Set<Category> categories) {
        return repository.findByCategories(categories);
    }

    @Override
    public List<Article> findByAuthor(User2 author) {
        return repository.findByAuthor(author);
    }
}