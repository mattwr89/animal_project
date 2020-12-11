package pl.mattwr89.fresh.app.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.mattwr89.fresh.app.dtos.CreateAnimalRequest;
import pl.mattwr89.fresh.app.services.AnimalService;

@Controller
@RequestMapping("/animal/add")@Slf4j
public class AnimalController {

    private final AnimalService animalService;


    public AnimalController(AnimalService animalService) {
        this.animalService = animalService;
    }


    @PostMapping
    public String processAnimal(@ModelAttribute("animalData") CreateAnimalRequest animalData, BindingResult result) {
        if (result.hasErrors()) {
            return "index";
        }
        animalService.animalAdd(animalData);
        return "redirect:/";

    }
}
