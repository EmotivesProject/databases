\c chatter_db;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL UNIQUE,
    group VARCHAR(56)
);

CREATE TABLE tokens (
	token TEXT PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
	expiration TIMESTAMPTZ NOT NULL,

    CONSTRAINT fk_token_username_on_users
    FOREIGN KEY(username)
    REFERENCES users(username)
);

CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
    username_from VARCHAR(128) NOT NULL,
    username_to VARCHAR(128) NOT NULL,
    message TEXT,
	image_path TEXT,
    created_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT fk_messages_username_to_on_users
    FOREIGN KEY(username_to)
    REFERENCES users(username),

    CONSTRAINT fk_messages_username_from_on_users
    FOREIGN KEY(username_from)
    REFERENCES users(username)
);

CREATE INDEX users_username_idx ON users(username);

CREATE INDEX messages_username_from_idx ON messages(username_from);
CREATE INDEX messages_username_to_idx ON messages(username_to);