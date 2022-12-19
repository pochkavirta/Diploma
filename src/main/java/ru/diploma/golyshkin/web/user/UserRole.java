package ru.diploma.golyshkin.web.user;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum UserRole {
    USER("USER"),
    ADMIN("ADMIN");

    private String role;
}
