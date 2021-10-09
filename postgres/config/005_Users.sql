\c postit_db;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL UNIQUE,
    user_group VARCHAR(56)
);

CREATE INDEX users_username_idx ON users(username);

CREATE INDEX users_user_group_idx ON users(user_group);