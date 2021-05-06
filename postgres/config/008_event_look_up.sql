\c metrics_db;

CREATE TABLE customer_events (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
	customer_event_type VARCHAR(128) NOT NULL,
	customer_event_id int NOT NULL,
	event_data JSONB NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT id_type_unique UNIQUE (customer_event_id,customer_event_type)
);
