source .env
psql $DATABASE_URL -f database/test.sql
