\c postit_db;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL UNIQUE,
    group VARCHAR(56)
);

CREATE INDEX users_username_idx ON users(username);
