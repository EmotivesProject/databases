\c uacl_db;

CREATE TABLE friends (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
    friend_username VARCHAR(128) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
	updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT fk_username_on_username
    FOREIGN KEY(username)
    REFERENCES users(username),

    CONSTRAINT fk_username_on_friend_username
    FOREIGN KEY(friend_username)
    REFERENCES users(username)
);

CREATE INDEX friends_username_idx ON friends(username);
