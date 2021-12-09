-- script for initial db setup, run this in your machine as superuser to set up db basics

-- create database and connect to it if needed


-- create migrations manager and app user, use other passwords in local dev setup
-- grant permissions to user
CREATE USER wadhw4user PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE wadhw4 TO wadhw4user;

CREATE TABLE posts(
    id bigserial PRIMARY KEY,
    title varchar,
    body varchar,
    urllink varchar
);
-- TODO
INSERT INTO posts(title, body, urllink) VALUES ('aaaaa', 'much aaaa', 'some.other.url');

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO wadhw4user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO wadhw4user;

