package ru.diploma.golyshkin.repository;

import ru.diploma.golyshkin.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> findAllProducts();
}
