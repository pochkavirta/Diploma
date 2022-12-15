DELETE
FROM user_roles;
DELETE
FROM users;
DELETE
FROM products_category;
DELETE
FROM products;
DELETE
FROM services_category;
DELETE
FROM services;
--ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO user_roles
VALUES (100100, 'User'),
       (100101, 'Admin');

INSERT INTO users
VALUES (110000, 'Никита', 'Ефимов', 'Nadoneco', 'yewocressoffa-5634@gmail.com', '+79256795473', 'yewocressoffa', now(),
        true, 100101),
       (110001, 'Дмитрий', 'Коротков', 'Uydenari', 'poiwatroucribi-7962@gmail.com', '+79254376229', 'poiwatroucribi',
        now(), true, 100100);

INSERT INTO products_category
VALUES (101000, 'Крупная бытовая техника'),
       (101001, 'Встраиваемая бытовая техника'),
       (101002, 'Техника для кухни'),
       (101003, 'Техника для дома');

INSERT INTO products
VALUES (120000, 110000, 'Zerowatt', 'Электрическая варочная панель', 7550, 5, now(), true, 'Zerowatt.png', 101000),
       (120001, 110000, 'Hansa', 'Индукционная варочная панель', 16990, 3, now(), true, 'Hansa.png', 101001),
       (120002, 110001, 'Philips', 'Кофеварка капельная', 3590, 4, now(), true, 'Philips.png', 101002),
       (120003, 110001, 'EVOLUTION', 'Вертикальный пылесос', 3142, 2, now(), true, 'EVOLUTION.png', 101003);

INSERT INTO services_category
VALUES (102000, 'Репетиторы'),
       (102001, 'Мастера по ремонту'),
       (102002, 'Мастера красоты'),
       (102003, 'Фрилансеры');

INSERT INTO services
VALUES (130000, 110000, 'Ксения Сергеевна Дьяченко', 'Репетитор по английскому языку', 3000, 5, now(), true,
        'Photo.png', 102000),
       (130001, 110001, 'Сергей Сергеевич Даянов', 'Мастер по ремонту стиральных и посудомоечных машин', 500, 3, now(),
        true, 'Photo.png', 102001),
       (130002, 110000, 'Елена Валентиновна Вареникова', 'Косметолог', 2000, 4, now(), true, 'Photo.png', 102002),
       (130003, 110001, 'Анастасия Валерьевна Андреева', 'Таргетированная реклама, SMM', 13990, 2, now(), true,
        'Photo.png', 102003);

-- TODO добавить выше еще 2 таблицы. +++
-- TODO Заполнить категории по 4 шт, ролями по 2 штуки +++
-- TODO Добавить 2 Пользователя, Админ и Обычный +++
-- TODO Добавить По 4 товара и 4 Сервиса с разными категориями +++