/* eslint-disable no-unused-vars */
const Inkling = require('../example-data-model');
// const ErrorMiddleware = require('./error-middleware');
// const ClientError = require('./client-error');
require('dotenv/config');

const pg = require('pg');
const db = new pg.Pool({ // eslint-disable-line
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});

const express = require('express');
const app = express();
const JSONMiddleware = express.json();
app.use(JSONMiddleware);

// console.error(JSON.stringify(Inkling.data, null, 2));
const data = Inkling.data;
const sql = `
INSERT INTO "data" JSON {
  "category" : "GC",
  "points" : 780,
  "id" : "829aa84a-4bba-411f-a4fb-38167a987cda",
  "lastname" : "SUTHERLAND" }';
}`;
const params = [data.moves];
// console.error(params);
db.query(sql, params)
  .then(res => console.error(res))
  .catch(err => err);

app.listen(process.env.PORT, () => {
  // eslint-disable-next-line no-console
  console.log(`express server listening on port ${process.env.PORT}`);
});
