
CREATE TABLE IF NOT EXISTS "public"."inventory" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "productId" BIGSERIAL REFERENCES "public"."products" (id) ON UPDATE CASCADE ON DELETE CASCADE,
    "quantity" INT NOT NULL DEFAULT 0
);
