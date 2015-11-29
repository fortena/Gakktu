package project.persistence.entities;

import javax.persistence.*;
import java.util.Set;
/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Entity
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="article_id")
    private Long id;
    private String title;
    private String content;
    @OneToMany
    @JoinColumn(name="keyword_id")
    private Set<Keyword> keywords;
    @OneToMany
    @JoinColumn(name="category_id")
    private Set<Category> categories;
    private User2 author;

    public Article(){
    }

    public Article(String title, String content, Set<Keyword> keywords, Set<Category> categories, User2 user2) {
        this.title = title;
        this.content = content;
        this.keywords = keywords;
        this.categories = categories;
        this.author = author;

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

    public User2 getAuthor(User2 author) {return author;}

    public void setAuthor(User2 author) {this.author = author;}



    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Article[title=%s, content=%s]",
                title, content);
    }
}
