\c uacl_db;

CREATE TABLE followers (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
    follow_username VARCHAR(128) NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT fk_username_on_username
    FOREIGN KEY(username)
    REFERENCES users(username),

    CONSTRAINT fk_username_on_follow_username
    FOREIGN KEY(follow_username)
    REFERENCES users(username),

    CONSTRAINT followers_combo UNIQUE (username,follow_username)
);

CREATE INDEX followers_username_idx ON followers(username);
