package ru.diploma.golyshkin.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.diploma.golyshkin.service.ProductService;

import java.util.Arrays;

@Controller
public class RootController {
    private ProductService productService;

    @GetMapping("/")
    public String root(Model model) {
        model.addAttribute("products", productService.findAllProducts());
        return "index";
    }
}
