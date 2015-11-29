package project.persistence.entities;

import javax.persistence.*;

/**
 * The class for the Postit Note itself.
 * The system generates a table schema based on this class for this entity.
 * Be sure to annotate any entities you have with the @Entity annotation.
 */
@Entity
@Table(name = "user2") // If you want to specify a table name, you can do so here
public class User2 {

    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String password;
    private String homeCountry;
    private String languagePref;
    private String gender;
    private String marital;
    private String arrivalYear;
    private Boolean mentor;
    private String dependents;
    private String[] topicInterests;
    private String employStatus;

    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public User2() {
    }

    public User2(String name, String password, String homeCountry, String languagePref, String gender, String marital, String arrivalYear, Boolean mentor, String dependents, String[] topicInterests, String employStatus) {
        this.name = name;
        this.password = password;
        this.homeCountry= homeCountry;
        this.languagePref=languagePref;
        this.gender=gender;
        this.marital=marital;
        this.arrivalYear=arrivalYear;
        this.mentor=mentor;
        this.dependents=dependents;
        this.topicInterests=topicInterests;
        this.employStatus=employStatus;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHomeCountry() { return homeCountry; }

    public void setHomeCountry(String homeCountry) { this.homeCountry = homeCountry; }

    public String getLanguagePref() { return languagePref;}

    public void setLanguagePref(String languagePref) { this.languagePref= languagePref;}

    public String getGender() { return gender;}

    public void setGender(String gender) { this.gender= gender;}

    public String getMarital() { return marital;}

    public void setMarital(String marital) { this.marital= marital;}

    public String getArrivalYear() { return arrivalYear;}

    public void setArrivalYear(String arrivalYear) { this.arrivalYear= arrivalYear;}

    public Boolean getMentor() { return mentor;}

    public void setMentor(Boolean mentor) { this.mentor= mentor;}

    public String getDependents() { return dependents;}

    public void setDependents(String dependents) { this.dependents= dependents;}

    public String[] getTopicInterests() { return topicInterests;}

    public void setTopicInterests(String[] topicInterests) { this.dependents= dependents;}

    public String getEmployStatus() { return employStatus;}

    public void setemployStatus(String employStatus) { this.employStatus= employStatus;}

    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "User2[name=%s, password=%s, homeCountry=%s, languagePref=%s, gender=%s. marital=%, arrivalYear=%, mentor=%, dependents=%, employStatus=%]",
                name,password, homeCountry, languagePref, gender, marital, arrivalYear, mentor, dependents, employStatus);
    }
}
