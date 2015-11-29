package project.persistence.entities;

import javax.persistence.*;


@Entity
@Table(name = "user2") // If you want to specify a table name, you can do so here
public class LogInAttempt {

    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameAttempt;
    private String passwordAttempt;


    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public LogInAttempt() {
    }

    public LogInAttempt(String nameAttempt, String passwordAttempt) {
        this.nameAttempt = nameAttempt;
        this.passwordAttempt = passwordAttempt;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNameAttempt() {
        return nameAttempt;
    }

    public void setNameAttempt(String nameAttempt) {
        this.nameAttempt = nameAttempt;
    }

    public String getPasswordAttempt() {
        return passwordAttempt;
    }

    public void setPasswordAttempt(String passwordAttempt) {
        this.passwordAttempt = passwordAttempt;
    }


    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "LogInAttempt[nameAttempt=%s, passwordAttempt=%s]",
                nameAttempt,passwordAttempt);
    }
}