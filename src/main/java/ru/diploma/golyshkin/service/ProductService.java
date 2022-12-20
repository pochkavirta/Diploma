package ru.diploma.golyshkin.service;

import ru.diploma.golyshkin.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAllProducts();

    void addProduct(Product product, Long userId);

    void updateProduct(Product product);

    void deleteProductById(Long id);

    void updateRanking(Long productId, Integer ranking);
}
