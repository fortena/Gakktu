package project.persistence.entities;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Entity
@Table(name = "post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="post_id")
    private Long id;
    private String title;
    private String content;

    public Post(){
    }

    public Post(String title, String content) {
        this.title = title;
        this.content = content;
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



    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Post[title=%s, content=%s]",
                title, content);
    }
}
