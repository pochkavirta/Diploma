package ru.diploma.golyshkin.repository.mapper;

import org.apache.commons.io.IOUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.util.exception.NotFoundException;

import java.sql.ResultSet;
import java.time.LocalDateTime;

@Component
public class ProductRowMapper implements RowMapper<Product> {

    @Override
    public Product mapRow(ResultSet resultSet, int i) {
        try {
            return new Product()
                    .setId(resultSet.getLong("products_id"))
                    .setNickName(resultSet.getString("nickname"))
                    .setName(resultSet.getString("name"))
                    .setDescription(resultSet.getString("description"))
                    .setPrice(resultSet.getDouble("price"))
                    .setRanking(resultSet.getDouble("ranking"))
                    .setRegisterDate(LocalDateTime.parse(resultSet.getString("registered")))
                    .setIsEnable(resultSet.getBoolean("enabled"))
                    .setCategory(resultSet.getString("category"))
                    .setPhoto(IOUtils.toString(resultSet.getClob("photo").getCharacterStream()));
        } catch (Exception e) {
            throw new NotFoundException("Ошибка при получение Продуктов");
        }
    }
}
