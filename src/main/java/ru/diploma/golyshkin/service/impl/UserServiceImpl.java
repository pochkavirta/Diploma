package ru.diploma.golyshkin.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.UserRepository;
import ru.diploma.golyshkin.service.UserService;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;

    @Override
    public Long createUser(User user) {
        //TODO добавить валидацию, что пароли совпадают
        //TODO добавить валидацию, что такого ника/початы еще нет, может каких то еще параметрво ПОДУМАТЬ
        return userRepository.createUser(user);
    }
}
