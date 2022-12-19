package ru.diploma.golyshkin.repository.impl;

import lombok.AllArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.UserRepository;

@Repository
@AllArgsConstructor
public class UserRepositoryImpl implements UserRepository {

    private final static String INSERT_USER = "INSERT INTO users"
            + "VALUES (110000, 'Никита', 'Ефимов', 'Nadoneco', 'yewocressoffa-5634@gmail.com', '+79256795473', 'yewocressoffa', now(),\n"
            + "        true, 100101)";

    private JdbcTemplate jdbcTemplate;

    @Override
    public Long createUser(User user) {
        String i = jdbcTemplate.query(INSERT_USER,
                rs -> !rs.next() ? null : rs.getString("first_name"));
        return null;
    }
}
