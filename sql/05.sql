/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

CREATE TABLE project (
    updated_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ,
    author_id BIGINT NOT NULL
    project_id INTEGER NOT NULL UNIQUE,
    target_id INTEGER NOT NULL,
    id SERIAL PRIMARY KEY,
    action SMALLINT NOT NULL,
    data TEXT,
    title VARCHAR(256),
    target_type VARCHAR(2) NOT NULL,

);

