DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products_category;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS services_category;
DROP TABLE IF EXISTS services;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100000;

CREATE TABLE user_roles
(
    user_roles_id int PRIMARY KEY,
    role          varchar
);

CREATE TABLE users
(
    users_id   int PRIMARY KEY,
    first_name varchar(16)                         NOT NULL,
    last_name  varchar(16)                         NOT NULL,
    nickname   varchar(16)                         NOT NULL,
    email      varchar(32)                         NOT NULL,
    phone      char(12)                            NOT NULL,
    password   varchar(16)                         NOT NULL,
    registered timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    enabled    BOOLEAN   DEFAULT TRUE              NOT NULL,
    user_role  int                                 NOT NULL,
    photo      bytea
--    FOREIGN KEY (user_role) REFERENCES user_roles (user_roles_id) ON DELETE CASCADE
);
--CREATE UNIQUE INDEX users_unique_emails_idx ON users (email);

CREATE TABLE products_category
(
    products_category_id int PRIMARY KEY,
    category             varchar(64)
--    CONSTRAINT products_category_idx UNIQUE (id, category)
);

CREATE TABLE products
(
    products_id          int PRIMARY KEY,
    user_id              int                                 NOT NULL,
    name                 varchar(64)                         NOT NULL,
    description          varchar(256)                        NOT NULL,
    price                decimal                             NOT NULL,
    ranking              decimal   DEFAULT 0,
    ranking_count        int       DEFAULT 0,
    registered           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    enabled              BOOLEAN   DEFAULT TRUE              NOT NULL,
    products_category_id int                                 NOT NULL,
    photo                bytea

--   CONSTRAINT FK_1 FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
--   CONSTRAINT FK_2 FOREIGN KEY (products_category_id) REFERENCES users (id) ON DELETE CASCADE
);

--CREATE UNIQUE INDEX products_unique_idx ON products (user_id, name);

CREATE TABLE services_category
(
    services_category_id int NOT NULL,
    category             varchar(64)
    --   CONSTRAINT services_category_idx UNIQUE (id, category)
);

CREATE TABLE services
(
    services_id          int PRIMARY KEY,
    user_id              int                                 NOT NULL,
    name                 varchar(64)                         NOT NULL,
    description          varchar(256)                        NOT NULL,
    price                int                                 NOT NULL,
    ranking              int       DEFAULT 0,
    registered           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    enabled              BOOLEAN   DEFAULT TRUE              NOT NULL,
    photo                bytea
    --   CONSTRAINT FK_1 FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    --   CONSTRAINT FK_2 FOREIGN KEY (services_category_id) REFERENCES users (id) ON DELETE CASCADE
);

--CREATE UNIQUE INDEX services_unique_idx ON services (user_id, name);