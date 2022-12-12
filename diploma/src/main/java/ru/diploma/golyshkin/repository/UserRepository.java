package ru.diploma.golyshkin.repository;

import ru.diploma.golyshkin.model.User;

import java.util.List;

public interface UserRepository {
    User save(User user);

    void delete(int id);

    User get(int id);

    User getByEmail(String email);

    List<User> getAll();

}
