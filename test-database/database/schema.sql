set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "public" cascade;

create schema "public";

CREATE TABLE public.characters(
  "id" SERIAL NOT NULL,
  "name" VARCHAR(500) NOT NULL,
  "rosterId" INT NOT NULL,
  "displayName" VARCHAR(500) NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW(),
  PRIMARY KEY("id")
);

CREATE TABLE public.data(
  "id" SERIAL REFERENCES public.characters,
  "moves" JSONB NOT NULL,
  -- "name" VARCHAR(500) NOT NULL,
  -- "activeFrames" TEXT NOT NULL,
  -- "damage" TEXT NOT NULL,
  -- "totalFrames" TEXT NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW()
);
-- CREATE TABLE public.purchases
-- (
--     id   serial PRIMARY KEY,
--     purchaser varchar(50),
--     items_purchased jsonb
-- );
