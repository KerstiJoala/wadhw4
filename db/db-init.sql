-- script for initial db setup, run this in your machine as superuser to set up db basics

-- create database and connect to it if needed


-- create migrations manager and app user, use other passwords in local dev setup
-- grant permissions to user
CREATE USER wadhw4user PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE wadhw4 TO wadhw4user;

CREATE TABLE posts(
    id bigserial PRIMARY KEY,
    body varchar
);
-- TODO
INSERT INTO posts(body) VALUES ('aaaaa');

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO wadhw4user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO wadhw4user;

