package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.service.StringManipulationService;

@Controller
public class HomeController {

    // Instance Variables
    StringManipulationService stringService;

    // Dependency Injection
    @Autowired
    public HomeController(StringManipulationService stringService) {
        this.stringService = stringService;
    }

    // Request mapping is the path that you want to map this method to
    // In this case, the mapping is the root "/", so when the project
    // is running and you enter "localhost:8080" into a browser, this
    // method is called
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(){

        // The string "Index" that is returned here is the name of the view
        // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
        // If you change "Index" to something else, be sure you have a .jsp
        // file that has the same name
        return "Index";
    }

    @RequestMapping(value="/mentor", method=RequestMethod.GET)
    public String mentor(Model model){
        String avatar = "https://notendur.hi.is/~tap4/donald.jpg";
        String name = "Donald Duck";
        String country = "USA";
        String userSince = "01/01/2015";
        String avatar2 = "https://notendur.hi.is/~tap4/face.png";
        String name2 = "Another User";
        String country2 = "Sweden";
        String userSince2 = "06/12/2012";


        model.addAttribute("avatar", avatar);
        model.addAttribute("name",name);
        model.addAttribute("country",country);
        model.addAttribute("userSince", userSince);
        model.addAttribute("avatar2", avatar2);
        model.addAttribute("name2",name2);
        model.addAttribute("country2",country2);
        model.addAttribute("userSince2", userSince2);

        return "Mentor";

    }

    /*@RequestMapping(value = "/articleform", method = RequestMethod.GET)
    public String articleform(){

        // The string "Index" that is returned here is the name of the view
        // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
        // If you change "Index" to something else, be sure you have a .jsp
        // file that has the same name
        return "articles/ArticleForm";
    }
    */
}
