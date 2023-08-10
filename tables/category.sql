CREATE TABLE IF NOT EXISTS categories (
    id BIGSERIAL NOT NULL PRIMARY KEY ,
    name VARCHAR(32) NOT NULL DEFAULT '',
    items BIGINT[]
);



INSERT INTO categories (NAME, ITEMS) VALUES ('Telefon', Array [1,2])