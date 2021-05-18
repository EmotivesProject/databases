\c metrics_db;

CREATE TABLE event_look_up (
    id SERIAL PRIMARY KEY,
    look_up_type VARCHAR(128) NOT NULL,
    last_inserted TIMESTAMPTZ NOT NULL DEFAULT '2001-09-28 01:00:00'
);

INSERT INTO event_look_up(look_up_type)
VALUES
('posts'),
('likes'),
('comments');

CREATE INDEX event_look_up_last_inserted_idx ON event_look_up(last_inserted);