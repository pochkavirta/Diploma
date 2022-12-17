package ru.diploma.golyshkin.web.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.diploma.golyshkin.model.Product;

import java.util.Arrays;

@Controller
@RequestMapping(value = "products")
public class ProductController {

    @GetMapping()
    public String products(Model model) {

        return "index";
    }
}
