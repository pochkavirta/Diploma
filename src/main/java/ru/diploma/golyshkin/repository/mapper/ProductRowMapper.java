package ru.diploma.golyshkin.repository.mapper;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.util.exception.NotFoundException;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ProductRowMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet, int i) throws SQLException {
        try {
            return null;
        } catch (Exception e) {
            throw new NotFoundException("Ошибка при получение Продуктов");
        }
    }
}
