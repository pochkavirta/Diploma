package ru.diploma.golyshkin.service;

import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.util.exception.NotFoundException;

import java.util.List;

public interface UserService {

    User create(User user);

    void delete(int id);

    User get(int id) throws NotFoundException;

    User getByEmail(String email) throws NotFoundException;

    void update(User user);

    List<User> getAll();

}
