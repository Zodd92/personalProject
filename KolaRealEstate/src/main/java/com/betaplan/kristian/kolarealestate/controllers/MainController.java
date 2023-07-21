package com.betaplan.kristian.kolarealestate.controllers;

import com.betaplan.kristian.kolarealestate.models.RealEstate;
import com.betaplan.kristian.kolarealestate.repositories.RealEstateRepo;
import com.betaplan.kristian.kolarealestate.services.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class MainController {
    @Autowired
    UserService userService;
    @Autowired
    RealEstateRepo realRepo;

    @GetMapping("/")
    public String dash(){
        return "index";
    }

    @GetMapping("/contact")
    public String contact(){return "contact";}
    @GetMapping("/prona")
    public String prona(){return "prona";}
    @GetMapping("/details")
    public String details(@ModelAttribute() RealEstate realEstate, HttpSession session){return "details";}
}
