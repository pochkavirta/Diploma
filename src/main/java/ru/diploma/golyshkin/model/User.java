package ru.diploma.golyshkin.model;

import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
    private Long users_id;
    private String first_name;
    private String last_name;
    private String nickname;
    private String email;
    private String phone;
    private String password;
    private LocalDateTime registered;
    private Boolean enabled;
    private Long user_role;
}
