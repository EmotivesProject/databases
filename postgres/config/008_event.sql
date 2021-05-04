\c metrics_db;

CREATE TABLE customer_events (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
	customer_event_type VARCHAR(128) NOT NULL,
	event_data JSONB NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);
