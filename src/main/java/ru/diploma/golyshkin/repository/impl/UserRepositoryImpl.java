package ru.diploma.golyshkin.repository.impl;

import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.UserRepository;
import ru.diploma.golyshkin.web.user.UserRole;

import java.util.Optional;

@Repository
@AllArgsConstructor
public class UserRepositoryImpl implements UserRepository {
    private static final String[] keyColumnNames = new String[] {"users_id"};

    private static final String INSERT_USER = "INSERT INTO users "
            + "(users_id, first_name, last_name, nickname, email, phone, password,"
            + " user_role, photo)"
            + " VALUES (nextval('global_seq'), :firstName, :lastName, :nickName, :email, :phone, :password,"
            + " (select user_roles_id from user_roles where role = 'User'), :photo)";


    private NamedParameterJdbcTemplate jdbcTemplate;

    @SneakyThrows
    @Override
    public Long createUser(User user) {
        GeneratedKeyHolder generatedKeyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(INSERT_USER,
                new MapSqlParameterSource()
                        .addValue("firstName", user.getFirstName())
                        .addValue("lastName", user.getLastName())
                        .addValue("nickName", user.getNickName())
                        .addValue("email", user.getEmail())
                        .addValue("phone", user.getPhone())
                        .addValue("password", user.getPassword())
                        .addValue("userRole", UserRole.USER.getRole())
                        .addValue("photo", user.getPhoto().getBytes()),
                generatedKeyHolder, keyColumnNames);
        return Optional.ofNullable(generatedKeyHolder.getKey()).map(Number::longValue).orElse(-1L);
    }
  //  private static final String UNIQUE_PASSWORD_AND_EMAIL = "SELECT users_id FROM users WHERE email = 'email' OR nickname = 'nickname'";
}
