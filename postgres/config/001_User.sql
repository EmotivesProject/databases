\c uacl_db;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(56) NOT NULL,
    username VARCHAR(128) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
	updated_at TIMESTAMPTZ NOT NULL,
    user_group VARCHAR(56)
);

CREATE INDEX users_username_idx ON users(username);
