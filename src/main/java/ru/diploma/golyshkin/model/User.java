package ru.diploma.golyshkin.model;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
public class User {
    private Long usersId;
    private String firstName;
    private String lastName;
    private String nickName;
    private String email;
    private String phone;
    private String password;
    private String acceptPassword;
    private LocalDateTime registered;
    private Boolean enabled;
    private Long userRole;
    private MultipartFile photo;
}
