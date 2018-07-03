CREATE TABLE log_entry (
run_id SERIAL PRIMARY KEY,
created TIMESTAMP WITHOUT TIME ZONE,
subsystem VARCHAR(255),
class VARCHAR(255),
type VARCHAR(255),
run VARCHAR(255),
author VARCHAR(255),
title VARCHAR(255),
log_entry_text VARCHAR(255),
follow_ups VARCHAR(255),
quality_flag INTEGER,
interrupt_duration TIMESTAMP WITHOUT TIME ZONE,
intervention_type VARCHAR(255)
);

CREATE TABLE file_path (
file_path VARCHAR(255),
log_entry_id SERIAL);

CREATE SCHEMA users;

CREATE TABLE users.users (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
email VARCHAR(255),
role VARCHAR(255),
password VARCHAR(255)
);
