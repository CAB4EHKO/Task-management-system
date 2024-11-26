CREATE TABLE tasks
(
    id          SERIAL PRIMARY KEY,
    title       VARCHAR(255) NOT NULL,
    description TEXT,
    status      VARCHAR(50)  NOT NULL,
    priority    VARCHAR(50)  NOT NULL,
    author_id   BIGINT       NOT NULL,
    assignee_id BIGINT,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES users (id),
    CONSTRAINT fk_assignee FOREIGN KEY (assignee_id) REFERENCES users (id)
);