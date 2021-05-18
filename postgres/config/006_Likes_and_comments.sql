\c postit_db;

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
	post_id INT NOT NULL,
    username VARCHAR(128) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,
    active BOOLEAN default false,

    CONSTRAINT fk_username_on_like
    FOREIGN KEY(username)
    REFERENCES users(username),

    CONSTRAINT fk_post_id_on_like
    FOREIGN KEY(post_id)
    REFERENCES posts(id),

    CONSTRAINT user_and_like_contraint UNIQUE (post_id, username)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
	post_id INT NOT NULL,
    username VARCHAR(128) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,
    active BOOLEAN default false,

    CONSTRAINT fk_username_on_comments
    FOREIGN KEY(username)
    REFERENCES users(username),

    CONSTRAINT fk_post_id_on_comments
    FOREIGN KEY(post_id)
    REFERENCES posts(id)
);

CREATE INDEX likes_id_idx ON likes(id);
CREATE INDEX comments_id_idx ON comments(id);

CREATE INDEX likes_id_post_idx ON likes(post_id);
CREATE INDEX comments_post_id_idx ON comments(post_id);

CREATE INDEX likes_username_idx ON likes(username);
CREATE INDEX comments_username_idx ON comments(username);

CREATE INDEX likes_updated_at_idx ON likes(updated_at);
CREATE INDEX comments_updated_at_idx ON comments(updated_at);