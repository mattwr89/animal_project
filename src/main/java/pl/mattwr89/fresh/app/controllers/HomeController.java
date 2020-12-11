package pl.mattwr89.fresh.app.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.mattwr89.fresh.app.dtos.CreateAnimalRequest;

@Controller
@RequestMapping("/")@Slf4j
public class HomeController {


    @GetMapping
    public String homeAction(Model model){
        model.addAttribute("animalData", new CreateAnimalRequest());
        return "index";
    }


}
