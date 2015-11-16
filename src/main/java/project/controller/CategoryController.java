package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import project.persistence.entities.Category;
import project.service.CategoryService;

@Controller
public class CategoryController {

    // Instance Variables
    CategoryService categoryService;

    // Dependency Injection
    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    /*@RequestMapping(value = "/articles")
    private ModelAndView selectTag() {
        ModelAndView mav = new ModelAndView("articleForm");

        Map<>
    }*/

    // Method that returns the correct view for the URL /categories
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/categories", method = RequestMethod.GET)
    public String categoryViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in Categories.jsp, you can see that we
        // reference this attribute there by the name `category`.
        model.addAttribute("category",new Category());

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        model.addAttribute("categories",categoryService.findAllReverseOrder());

        // Return the view
        return "categories/Categories";
    }

    // Method that receives the POST request on the URL /categories
    // and receives the ModelAttribute("category")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the categories note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/categories", method = RequestMethod.POST)
    public String categoryViewPost(@ModelAttribute("category") Category category,
                                     Model model){

        // Save the Postit Note that we received from the form
        categoryService.save(category);

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        model.addAttribute("categories", categoryService.findAllReverseOrder());

        // Add a new Postit Note to the model for the form
        // If you look at the form in Categories.jsp, you can see that we
        // reference this attribute there by the name `category`.
        model.addAttribute("category", new Category());

        // Return the view
        return "categories/Categories";
    }

    // Method that returns the correct view for the URL /categories/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/categories/{name}", method = RequestMethod.GET)
    public String categoryGetCategoriesFromName(@PathVariable String name,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("categories", categoryService.findByName(name));

        // Add a new Postit Note to the model for the form
        // If you look at the form in Categories.jsp, you can see that we
        // reference this attribute there by the name `category`.
        model.addAttribute("category", new Category());

        // Return the view
        return "categories/Categories";
    }
}
