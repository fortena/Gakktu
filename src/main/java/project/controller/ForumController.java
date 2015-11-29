package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Post;
import project.service.ForumService;
import project.service.CategoryService;
import javax.servlet.http.HttpSession;
/**
 * Created by arnigeirulfarsson on 28.10.2015.
 */


@Controller
public class ForumController {

    // Instance Variables
    ForumService forumService;

    // Dependency Injection
    @Autowired
    public ForumController(ForumService forumService) {
        this.forumService = forumService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/forum", method = RequestMethod.GET)
    public String postViewGet(HttpSession session, Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("post",new Post());

        String sessionUser = (String) session.getAttribute("sessionUser");
        model.addAttribute("sessionUser", sessionUser);

        // Return the view
        return "forum/Forum";
    }

    // Method that receives the POST request on the URL /postit
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the postit note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/forum", method = RequestMethod.POST)
    public String postViewPost(@ModelAttribute("post") Post post,
                                     Model model){

        // Save the Postit Note that we received from the form
        forumService.save(post);


        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("post", new Post());

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        //model.addAttribute("categories",categoryService.findAll());

        // Return the view
        return "forum/Forum";
    }

    // Method that returns the correct view for the URL /postit/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/post/{title}", method = RequestMethod.GET)
    public String postGetContentFromTitle(@PathVariable String title,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("posts", forumService.findByTitle(title));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("post", new Post());

        // Return the view
        return "forum/Post";
    }

}
