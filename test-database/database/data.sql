-- insert into "users" ("user"name"", "hashedPassword")
-- values ('admin', '$argon2i$v=19$m=4096,t=3,p=1$h7icQD/xZr8akZsX+hNA0A$h68atJWyjvunAwNOpSpMfg9sPvoMQ6dKwoh0dJhurWA');

-- DANGER: this is NOT how to do it in the real world.
-- You should NEVER EVER check user data into Git!

-- INSERT INTO json_table
-- SELECT id, str_col, int_col, bool_col, json_col, float_col
-- FROM json_populate_record (NULL::json_table,
--     '{
--       "id": "0",
--       "str_col": "orkb type foo examples tutorials orkb",
--       "int_col": 5743,
--       "bool_col": true,
--       "json_col": {
--         "ObjectRocket": "examples"
--       },
--       "float_col": 94.55681687716474
--     }'
-- );


-- [
--   {
--     "id": "0",
--     "str_col": "orkb type foo examples tutorials orkb",
--     "int_col": 5743,
--     "bool_col": true,
--     "json_col": {
--       "ObjectRocket": "examples"
--     },
--     "float_col": 94.55681687716474
--   },
--   {
--     "id": "1",
--     "str_col": "Postgres bar data",
--     "int_col": 3151,
--     "bool_col": false,
--     "json_col": {
--       "data": "tutorials"
--     },
--     "float_col": 11.51099159756918
--   },
--   {
--     "id": "2",
--     "str_col": "Postgres tutorials data data",
--     "int_col": 4237,
--     "bool_col": true,
--     "json_col": {
--         "type": "type"
--     },
--     "float_col": 48.94065780742467
--   }
-- ]
INSERT INTO public.characters ("id", "name", "rosterId", "displayName")
  VALUES (1, 'inkling', 64, 'inkling');

INSERT INTO public.data ("moves")
  -- FROM jsonb_populate_recordset (NULL::public.moves,
    VALUES ('[
      {
        "activeFrames": "3-4",
        "damage": "2.0%",
        "name": "jab 1",
        "totalFrames": "19"
      },
      {
        "activeFrames": "2-3",
        "damage": "2.0%",
        "name": "jab 2",
        "totalFrames": "21"
      },
      {
        "activeFrames": "4-5",
        "damage": "3.5%",
        "name": "jab 3",
        "totalFrames": "29"
      },
      {
        "activeFrames": "4 (rehit rate: 3)",
        "damage": "--",
        "name": "rapid jab",
        "totalFrames": "--"
      },
      {
        "activeFrames": "6",
        "damage": "2.5%",
        "name": "rapid jab Finisher",
        "totalFrames": "48"
      },
      {
        "activeFrames": "8-10",
        "damage": "9.0%",
        "name": "forward tilt",
        "totalFrames": "34"
      },
      {
        "activeFrames": "7-12",
        "damage": "6.0%",
        "name": "up tilt",
        "totalFrames": "29"
      },
      {
        "activeFrames": "5-8/12-15",
        "damage": "3.0/6.0%",
        "name": "down tilt",
        "totalFrames": "31"
      },
      {
        "activeFrames": "8-9/10-13",
        "damage": "8.0/6.0%",
        "name": "dash attack",
        "totalFrames": "35"
      },
      {
        "activeFrames": "16-17",
        "damage": "14.0/16.0%",
        "name": "forward smash",
        "totalFrames": "51"
      },
      {
        "activeFrames": "9-10/18-20",
        "damage": "4.0/15.0/10.0%",
        "name": "up smash",
        "totalFrames": "57"
      },
      {
        "activeFrames": "11-15/20-24",
        "damage": "12.5/11.0%",
        "name": "down smash",
        "totalFrames": "49"
      },
      {
        "activeFrames": "6-9",
        "damage": "7.0%",
        "name": "neutral air",
        "totalFrames": "31"
      },
      {
        "activeFrames": "10-11/12-21",
        "damage": "12.0/10.0/7.0%",
        "name": "foward air",
        "totalFrames": "41"
      },
      {
        "activeFrames": "7-11",
        "damage": "10.0/7.5%",
        "name": "back air",
        "totalFrames": "36"
      },
      {
        "activeFrames": "12-15/17-20",
        "damage": "4.5/6.5%",
        "name": "up air",
        "totalFrames": "43"
      },
      {
        "activeFrames": "16-17",
        "damage": "12.0/10.0%",
        "name": "down air",
        "totalFrames": "61"
      },
      {
        "activeFrames": "16 (rehit rate: 4)",
        "damage": "0.3%",
        "name": "neutral b",
        "fullName": "splattershot",
        "totalFrames": "36"
      },
      {
        "activeFrames": "16",
        "damage": "4.0-11.0%",
        "name": "rapid jab Finisher",
        "fullName": "splat roller",
        "totalFrames": "35"
      },
      {
        "activeFrames": "12/15-21/1-10",
        "damage": "8.0/6.0%",
        "name": "up b",
        "fullName": "super jump",
        "totalFrames": "40"
      },
      {
        "activeFrames": "--",
        "damage": "9.4-15.0%",
        "name": "down b",
        "fullName": "splat bomb",
        "totalFrames": "47-65"
      }
    ]')

-- INSERT INTO purchases (purchaser,items_purchased) VALUES ('Bob',
-- '[{
--   "productid": 1,
--   ""name"": "Dell 123 Laptop Computer",
--   "price": 1300
-- },
--  {
--   "productid": 2,
--   ""name"": "Mechanical Keyboard",
--   "price": 120
-- }
-- ]');
-- INSERT INTO purchases (purchaser,items_purchased) VALUES('Carol',
-- '[{
--   "productid": 3,
--   ""name"": "Virtual Keyboard",
--   "price": 150
-- }, {
--   "productid": 1,
--   ""name"": "Dell 123 Laptop Computer",
--   "price": 1300
-- },
--  {
--   "productid": 8,
--   ""name"": "LG Ultrawide Monitor",
--   "price": 190
-- }
-- ]');
-- INSERT INTO purchases (purchaser,items_purchased) VALUES ('Ted',
-- '[{
--   "productid": 6,
--   ""name"": "Ergonomic Keyboard",
--   "price": 90
-- },
--  {
--   "productid": 7,
--   ""name"": "Dell 789 Desktop Computer",
--   "price": 120
-- }
-- ]');
-- INSERT INTO purchases (purchaser,items_purchased) VALUES('Alice',
-- '[{
--   "productid": 7,
--   ""name"": "Dell 789 Desktop Computer",
--   "price": 120
-- },
--  {
--   "productid": 2,
--   ""name"": "Mechanical Keyboard",
--   "price": 120
-- }
-- ]');
