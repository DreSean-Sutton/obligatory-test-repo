const something = require('dotenv/config');
const pg = require('pg');
const express = require('express');
const app = express();
const JSONMiddleware = express.json();

const db = new pg.Pool({ // eslint-disable-line
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});

app.use(JSONMiddleware)
