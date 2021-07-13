\c uacl_db;

CREATE TABLE autologin_tokens (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    autologin_token TEXT NOT NULL,

	CONSTRAINT fk_autologin_username
	FOREIGN KEY(username)
	REFERENCES users(username)
);

CREATE INDEX autologin_tokens_username_idx ON autologin_tokens(username);
CREATE INDEX autologin_tokens_autologin_token_idx ON autologin_tokens(autologin_token);
