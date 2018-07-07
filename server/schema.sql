DROP DATABASE IF EXISTS chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE `messages` (
  `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(140),
  `username` MEDIUMINT(8),
  `roomname` MEDIUMINT(8),
  `created_at` DATE NOT NULL,
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

ALTER TABLE `messages` ADD FOREIGN KEY (`username`) REFERENCES `users`(`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (`roomname`) REFERENCES `roomname`(`id`);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

