set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "public" cascade;

create schema "public";

CREATE TABLE public.characters(
  "id" SERIAL NOT NULL,
  "name" VARCHAR(5) NOT NULL,
  "rosterId" INT NOT NULL,
  "displayName" VARCHAR(500) NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW(),
  PRIMARY KEY("id")
);

CREATE TABLE public.moves(
  "id" int REFERENCES public.characters,
  "name" VARCHAR(500) NOT NULL,
  "activeFrames" TEXT NOT NULL,
  "damage" TEXT NOT NULL,
  "totalFrames" TEXT NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW()
);

-- CREATE TABLE public.json_table (
--     id VARCHAR(50) PRIMARY KEY,
--     str_col VARCHAR(500),
--     int_col SMALLINT,
--     bool_col BOOLEAN,
--     json_col JSON,
--     float_col DECIMAL
-- );
