package ru.diploma.golyshkin.web.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "user")
public class UserController {

    @GetMapping("/login")
    public String login() {
        System.out.println("============= 2===================");
        return "userLogin";
    }
}
