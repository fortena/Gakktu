package project.persistence.entities;

import javax.persistence.*;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */

@Entity
@Table(name = "keywords")
public class Keyword {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    public Keyword(){
    }

    public Keyword(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Keyword[name=%s]",
                name);
    }
}

