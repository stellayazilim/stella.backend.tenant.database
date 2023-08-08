
CREATE TABLE IF NOT EXISTS "inventory" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "productId" BIGSERIAL REFERENCES products ("id"),
    "quantity" INT NOT NULL DEFAULT 0
)