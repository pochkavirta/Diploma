DROP TABLE IF EXISTS products_category;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100000;

CREATE TABLE users
(
    id         INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    name       VARCHAR                           NOT NULL,
    email      VARCHAR                           NOT NULL,
    password   VARCHAR                           NOT NULL,
    registered TIMESTAMP           DEFAULT now() NOT NULL,
    enabled    BOOLEAN             DEFAULT TRUE  NOT NULL
);
CREATE UNIQUE INDEX users_unique_emails_idx ON users (email);

CREATE TABLE user_roles
(
    user_id INTEGER NOT NULL,
    role    VARCHAR,
    CONSTRAINT user_roles_idx UNIQUE (user_id, role),
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE products
(
    id          INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    user_id     INTEGER NOT NULL,
    name        VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    price       INTEGER NOT NULL,
    ranking     INTEGER NOT NULL,
    photoURL    VARCHAR,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE UNIQUE INDEX products_unique_idx ON products (user_id, name);

CREATE TABLE products_category
(
    products_id INTEGER NOT NULL,
    category    VARCHAR,
    CONSTRAINT products_roles_idx UNIQUE (products_id, category),
    FOREIGN KEY (products_id) REFERENCES products (id) ON DELETE CASCADE
);