package project.persistence.entities;

import javax.persistence.*;
import java.util.Set;
/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Entity
@Table(name = "articles")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String content;
    private Set<Keyword> keywords;
    private Set<Category> categories;

    public Article(){
    }

    public Article(String title, String content, Set<Keyword> keywords, Set<Category> categories) {
        this.title = title;
        this.content = content;
        this.keywords = keywords;
        this.categories = categories;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Set<Keyword> getKeywords() {
        return keywords;
    }

    public void setKeywords(Set<Keyword> keywords) {
        this.keywords = keywords;
    }

    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }


    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Article[title=%s, content=%s]",
                title, content);
    }
}
