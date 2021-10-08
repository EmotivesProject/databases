\c notif_db;

CREATE TABLE notifications (
	id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
    type VARCHAR(128),
    title TEXT,
    message TEXT,
	link TEXT,
	post_id INT,
	username_to VARCHAR(128),
    created_at TIMESTAMPTZ NOT NULL,
	seen BOOLEAN
);

CREATE INDEX notifications_username_idx ON notifications(username);
