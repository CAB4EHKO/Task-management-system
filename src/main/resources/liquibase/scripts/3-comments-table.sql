CREATE TABLE comments
(
    id         SERIAL PRIMARY KEY,
    content    TEXT   NOT NULL,
    author_id  BIGINT NOT NULL,
    task_id    BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES users (id),
    CONSTRAINT fk_task FOREIGN KEY (task_id) REFERENCES tasks (id)
)