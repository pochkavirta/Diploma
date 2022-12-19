package ru.diploma.golyshkin.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.diploma.golyshkin.model.Const;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.UserRepository;
import ru.diploma.golyshkin.service.UserService;
import ru.diploma.golyshkin.util.exception.ValidationException;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;

    @Override
    public Long createUser(User user) {
        boolean isCorrectPassword = user.getPassword().equals(user.getAcceptPassword());
        if (!isCorrectPassword) {
            throw new ValidationException(Const.COMPARE_PASSWORD_ERROR);
        }

        //TODO добавить валидацию, что такого ника/почты еще нет, может каких то еще параметров ПОДУМАТЬ
        return userRepository.createUser(user);
    }
}
