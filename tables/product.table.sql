
-- create product table
CREATE TABLE IF NOT EXISTS products  (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(32) UNIQUE NOT NULL ,
    description VARCHAR(124),
    explanation TEXT,
    brand_id BIGINT NOT NULL,
    CONSTRAINT fk_brand FOREIGN KEY (brand_id) references brands(id)
);

-- create brands table
CREATE TABLE IF NOT EXISTS brands(
    id BIGSERIAL NOT NULL,
    name VARCHAR(32) NOT NULL UNIQUE,
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS shelfs (
    id BIGSERIAL NOT NULL,
    name VARCHAR(32) NOT NULL UNIQUE ,
    description TEXT,
    PRIMARY KEY (id)
);

-- storage type of item
DROP TYPE IF EXISTS INVENTORY_QUANTITY_TYPE;
CREATE TYPE INVENTORY_QUANTITY_TYPE AS ENUM ('kg', 'pc', 'lt');

CREATE TABLE IF NOT EXISTS inventory (
    id BIGSERIAL NOT NULL,
    type INVENTORY_QUANTITY_TYPE NOT NULL DEFAULT 'pc',
    quantity DECIMAL NOT NULL DEFAULT 0,
    product_id BIGSERIAL NOT NULL,
    shelf_id SERIAL,
    PRIMARY KEY (id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(id),
    CONSTRAINT fk_shelf FOREIGN KEY (shelf_id) REFERENCES shelfs(id)
);

