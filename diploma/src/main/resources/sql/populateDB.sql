DELETE
FROM user_roles;
DELETE
FROM products_category;
DELETE
FROM products;
DELETE
FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

-- TODO добавить выше еще 2 таблицы.
-- TODO Заполнить категории по 4 шт, ролями по 2 штуки
-- TODO Добавить 2 Пользователя, Админ и Обычный
-- TODO Добавить По 4 товара и 4 Сервиса с разными категориями