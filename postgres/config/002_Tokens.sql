\c uacl_db;

CREATE TABLE tokens (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    token TEXT NOT NULL,
    refresh_token TEXT NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,

	CONSTRAINT fk_username
	FOREIGN KEY(username)
	REFERENCES users(username)
);