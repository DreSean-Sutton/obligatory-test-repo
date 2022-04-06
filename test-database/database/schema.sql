set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "data" cascade;

create schema "data";

CREATE TABLE IF NOT EXISTS "data" (
  "userId"           serial           not null PRIMARY KEY,
  "moves"            json             not null,
  "throws"           json             not null,
  "attributes"       json             not null,
  "miscellaneous"    json             not null
)
