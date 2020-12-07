package pl.mattwr89.fresh.app.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class PanelController {

    @GetMapping("/app")
    public String panelAction(){
        return "user/dashboard";
    }
}
