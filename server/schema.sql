CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id INTEGER NOT NULL AUTO INCREMENT,
  message VARCHAR NOT NULL,
  user VARCHAR NOT NULL,
  roomname VARCHAR NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user) REFERENCES users(id),
  FOREIGN KEY (roomname) REFERENCES rooms(id)
);

CREATE TABLE users (
  id INTEGER NOT NULL AUTO INCREMENT,
  name VARCHAR NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id INTEGER NOT NULL AUTO INCREMENT,
  name VARCHAR NOT NULL,
  PRIMARY KEY (id)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

