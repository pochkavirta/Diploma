package ru.diploma.golyshkin.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.repository.ProductRepository;
import ru.diploma.golyshkin.service.ProductService;

import java.util.List;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
    private ProductRepository productRepository;

    @Override
    public List<Product> findAllProducts() {
        return productRepository.findAllProducts();
    }
}
