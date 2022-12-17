package ru.diploma.golyshkin.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {

    private Long id;
    private String name;
    private Double ranking;
    private Integer price;
    private String description;
    private String photoUrl;
}
