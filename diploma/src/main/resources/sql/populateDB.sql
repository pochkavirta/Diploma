DELETE
FROM user_roles;
DELETE
FROM products_category;
DELETE
FROM products;
DELETE
FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users(name, email, password)
VALUES ('User', 'user@ya.ru', '{noop}password'),
       ('Admin', 'admin@gmail.com', '{noop}admin');

INSERT INTO user_roles (role, user_id)
VALUES ('ROLE_USER', 100000),
       ('ROLE_ADMIN', 100001),
       ('ROLE_USER', 100001);

INSERT INTO products (user_id, name,  description, price, ranking, is_service, photourl)
VALUES (100000, 'Kronenbourg 1664', 'Пшеничное пиво', 70, 5, 'Kronebourg.png'),
       (100000, 'Guinness', 'Темный  стаут', 130, 2, 'Guinness.png'),
       (100000, 'Эль Мохнатый Шмель', 'Эль светный нефильтрованный', 40, 3, 'elMokhnatyiShmel.png'),
       (100000, 'Hoegaarden', 'Пшеничное пиво', 70, 4, 'hoegaarden1.png'),
       (100001, 'Hoegaarden грейпфрут', 'Пшеничное пиво', 70, 4, 'hoegaarden2.png'),
       (100001, 'Lefebvre Belgian Kriek', 'Красное вишневое', 180, 5, 'LefebvreBelgianKriek.png');

INSERT INTO products_category(category, products_id)
VALUES ('CATEGORY_BEER', 100002),
       ('CATEGORY_BEER', 100003),
       ('CATEGORY_BEER', 100004),
       ('CATEGORY_BEER', 100005),
       ('CATEGORY_BEER', 100006),
       ('CATEGORY_BEER', 100007);