package ru.diploma.golyshkin.repository;

import ru.diploma.golyshkin.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> findAllProducts();

    void addProduct(Product product, Long userId);

    void updateProduct(Product product);

    void deleteProductById(Long id);

    void updateRanking(Long productId, Double ranking);
}
