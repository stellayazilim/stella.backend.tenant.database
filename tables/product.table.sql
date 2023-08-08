CREATE TABLE IF NOT EXISTS public.products  (
    "id" SMALLSERIAL PRIMARY KEY NOT NULL,
    "name" VARCHAR(32) UNIQUE NOT NULL ,
    "description" VARCHAR(124),
    "explanation" TEXT
);


ALTER TABLE IF EXISTS
    public.products
    ADD COLUMN "brand"
        VARCHAR(56) NOT NULL DEFAULT Brand;


ALTER TABLE IF EXISTS
    public.products
    ADD COLUMN "slug" VARCHAR(32) GENERATED ALWAYS AS ( name ) STORED;


