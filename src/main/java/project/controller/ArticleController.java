package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Article;
import project.service.ArticleService;

/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */
@Controller
public class ArticleController {

    // Instance Variables
    ArticleService articleService;

    // Dependency Injection
    @Autowired
    public ArticleController(ArticleService articleService) {
        this.articleService = articleService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/postit", method = RequestMethod.GET)
    public String articleViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("article",new Article());


        // Return the view
        return "articles/Article";
    }

    // Method that receives the POST request on the URL /postit
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the postit note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/article", method = RequestMethod.POST)
    public String articleViewPost(@ModelAttribute("article") Article article,
                                     Model model){

        // Save the Postit Note that we received from the form
        articleService.save(article);


        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("article", new Article());

        // Return the view
        return "articles/Articles";
    }

    // Method that returns the correct view for the URL /postit/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/article/{title}", method = RequestMethod.GET)
    public String articleGetContentFromTitle(@PathVariable String title,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("articles", articleService.findByTitle(title));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("article", new Article());

        // Return the view
        return "articles/Articles";
    }
}
