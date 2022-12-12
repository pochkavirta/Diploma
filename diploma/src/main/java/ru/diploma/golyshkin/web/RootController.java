package ru.diploma.golyshkin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String root() {
        System.out.println("============= ===================");
        return "index";
    }

    @GetMapping("/index")
    public String home() {
        System.out.println("============= ===================");
        return "index";
    }

    @GetMapping("/marketplace")
    public String marketplace() {
        System.out.println("============= ===================");
        return "index";
    }

//    @PostMapping(value = "/users")
//    public String login() {
//        return "users";
//    }
//
//    @PostMapping(value = "/MainPage")
//    public String MainPage() {
//        return "MainPage";
//    }
}
