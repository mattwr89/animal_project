package pl.mattwr89.fresh.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.mattwr89.fresh.app.dtos.RegistrationDataDTO;
import pl.mattwr89.fresh.app.services.RegistrationService;


import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    private final RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }


    @GetMapping
    public String prepareRegistrationPage(Model model) {
        model.addAttribute("data", new RegistrationDataDTO());
        return "register";
    }

    @PostMapping
    public String processRegistrationPage(@Valid @ModelAttribute ("data")RegistrationDataDTO data, BindingResult results) {
        if (results.hasErrors()){
            return "register";
        }
        registrationService.registerUser(data);
        return "redirect:/login";
    }

}
