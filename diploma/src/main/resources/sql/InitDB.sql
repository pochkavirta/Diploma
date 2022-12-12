DROP TABLE IF EXISTS products_category;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100000;

CREATE TABLE user_roles
(
    id   INTEGER NOT NULL,
    role VARCHAR
);

CREATE TABLE users
(
    id         INTEGER PRIMARY KEY DEFAULT nextval ('global_seq'),
    name       VARCHAR                 NOT NULL,
    email      VARCHAR                 NOT NULL,
    phone      VARCHAR                 NOT NULL,
    password   VARCHAR                 NOT NULL,
    registered TIMESTAMP DEFAULT now() NOT NULL,
    enabled    BOOLEAN   DEFAULT TRUE  NOT NULL,
    user_role  INTEGER                 NOT NULL,
    FOREIGN KEY (user_role) REFERENCES user_roles (id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX users_unique_emails_idx ON users (email);

CREATE TABLE products_category
(
    id       INTEGER NOT NULL,
    category VARCHAR,
    CONSTRAINT products_roles_idx UNIQUE (id, category)
);

CREATE TABLE products
(
    id                   INTEGER PRIMARY KEY DEFAULT nextval ('global_seq'),
    user_id              INTEGER NOT NULL,
    name                 VARCHAR NOT NULL,
    description          VARCHAR NOT NULL,
    price                INTEGER NOT NULL,
    ranking              INTEGER NOT NULL,
    is_service           BOOLEAN NOT NULL,
    photoURL             VARCHAR,
    products_category_id INTEGER NOT NULL,
    CONSTRAINT FK_1 FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    CONSTRAINT FK_2 FOREIGN KEY (products_category_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE UNIQUE INDEX products_unique_idx ON products (user_id, name);

--TODO сделать еще 2 таблицы, services и services__category по аналогии с products и products_category