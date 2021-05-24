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

CREATE INDEX token_username_idx ON tokens(username);
CREATE INDEX token_refresh_token_idx ON tokens(refresh_token);