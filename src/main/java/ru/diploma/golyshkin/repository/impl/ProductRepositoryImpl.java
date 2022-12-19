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

    private static final String FIND_ALL_PRODUCTS = "SELECT pd.products_id, u.nickname,"
            + " pd.name, pd.description, pd.price, pd.ranking, pd.registered, pd.enabled, pc.category"
            + " FROM products pd"
            + " JOIN USERS u ON u.users_id=pd.user_id "
            + " JOIN products_category pc ON pc.products_category_id=pd.products_category_id";

    @Override
    public List<Product> findAllProducts() {
        return jdbcTemplate.query(FIND_ALL_PRODUCTS, rowMapper);
    }

}
