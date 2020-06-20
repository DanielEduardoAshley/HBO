DROP DATABASE IF EXISTS hbo
CREATE DATABASE hbo
c/ hbo

DROP TABLE IF EXISTS users, favorites;


CREATE TABLE users
(
    id SERIAL PRIMARY KEY,  
    username VARCHAR UNIQUE NOT NULL,
    firebaseid VARCHAR UNIQUE NOT NULL
);





CREATE TABLE favorites
(
    id SERIAL PRIMARY KEY,
    userid INT REFERENCES users(id) ON DELETE CASCADE,
    show_name VARCHAR NOT NULL,
    air_time VARCHAR NOT NULL
);

