DROP DATABASE IF EXISTS chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(20),
  `user` MEDIUMINT(8),
  `room` MEDIUMINT(8),
  PRIMARY KEY (`id`)
  -- FOREIGN KEY (`user`) REFERENCES `users`(`id`),
  -- FOREIGN KEY (`room`) REFERENCES `roomname`(`id`)
);

CREATE TABLE `users` (
  `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20),
  PRIMARY KEY (`id`)
);

CREATE TABLE `roomname` (
  `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20),
  PRIMARY KEY (`id`)
);

ALTER TABLE `messages` ADD FOREIGN KEY (`user`) REFERENCES `users`(`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (`room`) REFERENCES `roomname`(`id`);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

