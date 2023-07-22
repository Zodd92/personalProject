package com.betaplan.kristian.kolarealestate.controllers;

import com.betaplan.kristian.kolarealestate.models.LoginUser;
import com.betaplan.kristian.kolarealestate.models.RealEstate;
import com.betaplan.kristian.kolarealestate.models.User;
import com.betaplan.kristian.kolarealestate.repositories.RealEstateRepo;
import com.betaplan.kristian.kolarealestate.services.RealEstateService;
import com.betaplan.kristian.kolarealestate.services.UserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {
    @Autowired
    UserService userService;
    @Autowired
    RealEstateService realEstateService;

    @GetMapping("/")
    public String index(Model model, @ModelAttribute("newUser") User newUser,
                        @ModelAttribute("newLogin") User newLogin, HttpSession session) {
        if(session.getAttribute("userId") != null) {
            return "redirect:/home";
        }


        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser,
                           BindingResult result, Model model, HttpSession session) {

        // Call a register method in the service
        // to do some extra validations and create a new user!
        User user = userService.register(newUser, result);


        if(result.hasErrors()) {
            // Be sure to send in the empty LoginUser before
            // re-rendering the page.
            model.addAttribute("newLogin", new LoginUser());
            return "index";
        }

        // No errors!
        // TO-DO Later: Store their ID from the DB in session,
        // in other words, log them in.
        session.setAttribute("userId", user.getId());

        return "redirect:/home";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin,
                        BindingResult result, Model model, HttpSession session) {

        // Add once service is implemented:
        User user = userService.login(newLogin, result);

        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index";
        }

        // No errors!
        // Store their ID from the DB in session,
        // in other words, log them in.
        session.setAttribute("userId", user.getId());

        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
    @GetMapping("/home")
    public String home(Model model,HttpSession session){
        model.addAttribute("realEstate", realEstateService.getAll());
        model.addAttribute("user", userService.findById((Long)session.getAttribute("userId")));
        return "index";
    }

    @GetMapping("/contact")
    public String contact(){return "contact";}
    @GetMapping("/prona")
    public String prona(){return "prona";}
    @GetMapping("/details")
    public String details(@ModelAttribute() RealEstate realEstate, HttpSession session){return "details";}
}
