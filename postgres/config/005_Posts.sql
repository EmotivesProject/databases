\c postit_db;

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
    content JSONB NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,
    active BOOLEAN default false,

    CONSTRAINT fk_username_on_posts
    FOREIGN KEY(username)
    REFERENCES users(username)
);
