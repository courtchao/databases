DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(20) NOT NULL,
  `user` MEDIUMINT(8) NOT NULL,
  `roomname` MEDIUMINT(8) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user`) REFERENCES `users`(`id`),
  FOREIGN KEY (`roomname`) REFERENCES `rooms`(`id`)
);

CREATE TABLE `users` (
  `id` MEDIUMINT(8) NOT NULL AUTO INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- CREATE TABLE `users` (
--     `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     `username` VARCHAR(20) NOT NULL,
--     `password` VARCHAR(40) NOT NULL,
--     `salt` VARCHAR(40) DEFAULT NULL,
--     `email` VARCHAR(80) NOT NULL,
--     `created_on` INT(11) UNSIGNED NOT NULL,
--     `last_login` INT(11) UNSIGNED DEFAULT NULL,
--     `active` TINYINT(1) UNSIGNED DEFAULT NULL
-- );

CREATE TABLE rooms (
  `id` MEDIUMINT(8) NOT NULL AUTO INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

