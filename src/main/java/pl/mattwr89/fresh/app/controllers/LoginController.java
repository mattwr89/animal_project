package pl.mattwr89.fresh.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class LoginController {

    @GetMapping("/login")
    public String prepareLoginPage() {
        return "login";
    }

    @GetMapping("/logout")
    public String prepareLogoutPage(){
        return "login";
    }
}
