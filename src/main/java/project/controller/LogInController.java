package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.LogInAttempt;
import project.persistence.entities.User2;
import project.persistence.repositories.UserRepository;
import project.service.LogInService;
import project.service.UserService;

import java.util.Arrays;

import java.util.ArrayList;
import java.util.Collection;
import javax.servlet.http.HttpSession;

import java.util.List;


@Controller
public class LogInController {

    // Instance Variables
    LogInService logInService;
    UserService userService;


    // Dependency Injection
    @Autowired
    public LogInController(LogInService logInService, UserService userService) {
        this.logInService = logInService;
        this.userService = userService;
    }

    // Method that returns the correct view for the URL /register
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String logInViewGet(HttpSession session, Model model){

        // Add a new User to the model for the form
        // If you look at the form in user.jsp, you can see that we
        // reference this attribute there by the name `user`.

        model.addAttribute("login", new LogInAttempt());


        // Here we get all the Users (in a reverse order) and add them to the model
        //model.addAttribute("users", userService.findAllReverseOrder());

       // model.addAttribute("countries", countries);
        //model.addAttribute("languages", languages);
        //model.addAttribute("years", years);
        //model.addAttribute("topics", topics);

        // Return the view (not sure here)
        return "LogIn";
    }

    // Method that receives the POST request on the URL /user
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the user because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String logInViewPost(HttpSession session, @ModelAttribute("login") LogInAttempt logInAttempt, Model model){

        model.addAttribute("login", new LogInAttempt());
        String sessionUser = logInAttempt.getNameAttempt();
        Boolean userDoesNotExist=false;
        Boolean passwordIsWrong=false;


        if (userService.findByName(sessionUser).size()>0) {

            User2 userFoundInDatabase=userService.findByName(sessionUser).get(0);
            if (userFoundInDatabase.getPassword().equals(logInAttempt.getPasswordAttempt())) {
                session.setAttribute("sessionUser", sessionUser);
            }
            else passwordIsWrong=true;
            model.addAttribute("passwordIsWrong", passwordIsWrong);
        }
        else userDoesNotExist=true;
        model.addAttribute("userDoesNotExist", userDoesNotExist);

        // Return the view

        return "LogIn";
    }

    // Method that returns the correct view for the URL /postit/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/login/{name}", method = RequestMethod.GET)
    public String registerGetUserFromName(@PathVariable String name,
                                          Model model){

        // Get all Postit Notes with this name and add them to the model
        //model.addAttribute("users", userService.findByName(name));

        // Add a new user to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("login", new LogInAttempt());
        //model.addAttribute("countries", countries);
        //model.addAttribute("languages", languages);
        //model.addAttribute("years", years);
        //model.addAttribute("topics", topics);

        // Return the view
        System.out.println("103");
        return "logIn";
    }
}