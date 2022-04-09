set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "public" cascade;

create schema "public";

CREATE TABLE public.characters(
  "id" SERIAL NOT NULL,
  "name" VARCHAR(500) NOT NULL,
  "rosterId" VARCHAR NOT NULL,
  "displayName" VARCHAR(500) NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW(),
  PRIMARY KEY("id")
);


CREATE TABLE public.moves(
  "moveId" SERIAL NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "damage" VARCHAR(50) NOT NULL,
  "activeFrames" VARCHAR(50) NOT NULL,
  "totalFrames" VARCHAR(50) NOT NULL,
  "type" VARCHAR(50) NOT NULL,
  "createdAt" TIMESTAMPTZ(6) NOT NULL DEFAULT NOW(),
  PRIMARY KEY("moveId")
);

CREATE TABLE public.characterData(
  "id" int NOT NULL,
  -- "throwId" SERIAL REFERENCES public.throws,
  -- "attributeid" SERIAL REFERENCES public.attributes,
  -- "miscellaneousId" SERIAL REFERENCES public.miscellaneous,
  "moveId" SERIAL REFERENCES public.moves
);

-- CREATE TABLE public.purchases
-- (
--     id   serial PRIMARY KEY,
--     purchaser varchar(50),
--     items_purchased jsonb
-- );
