package ru.diploma.golyshkin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String root() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        System.out.println("============= 2===================");
        return "login";
    }

    @GetMapping("/marketplace")
    public String marketplace() {
        return "index";
    }
}
