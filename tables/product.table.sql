CREATE TABLE IF NOT EXISTS  products  (
    id SMALLSERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(32) UNIQUE NOT NULL ,
    description VARCHAR(124),
    explanation TEXT
)