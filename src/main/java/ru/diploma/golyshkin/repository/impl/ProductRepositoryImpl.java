package ru.diploma.golyshkin.repository.impl;

import lombok.AllArgsConstructor;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.repository.ProductRepository;
import ru.diploma.golyshkin.repository.mapper.ProductRowMapper;

import java.util.List;

@Repository
@AllArgsConstructor
public class ProductRepositoryImpl implements ProductRepository {
    private NamedParameterJdbcTemplate jdbcTemplate;
    private ProductRowMapper rowMapper;

    private static final String FIND_ALL_PRODUCTS = "SELECT * FROM products";

    @Override
    public List<Product> findAllProducts() {
        return jdbcTemplate.query(FIND_ALL_PRODUCTS, rowMapper);
    }

}
