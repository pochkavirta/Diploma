package ru.diploma.golyshkin.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.diploma.golyshkin.model.Product;

import java.util.Arrays;

@Controller
public class RootController {
    @GetMapping("/")
    public String root(Model model) {
        System.out.println("===== ADD PRODUCTS ======");
        Product product1 = new Product();
        product1.setId(1L);
        product1.setName("product1");
        product1.setRanking(5.0);
        product1.setPhotoUrl("123");
        Product product2 = new Product();
        product1.setId(1L);
        product1.setName("product1");
        product1.setRanking(5.0);
        product1.setPhotoUrl("123");
        model.addAttribute("products", Arrays.asList(product1, product2));
        return "index";
    }
}
