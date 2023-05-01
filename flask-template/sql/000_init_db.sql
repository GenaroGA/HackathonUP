-- Adminer 4.8.1 MySQL 5.7.42 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`friend_id`),
  KEY `friends_fk0` (`user_id`),
  CONSTRAINT `friends_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `multimedia`;
CREATE TABLE `multimedia` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_url` text NOT NULL,
  `tag` text,
  `routes_id` int(11) NOT NULL,
  `place` text NOT NULL,
  PRIMARY KEY (`media_id`),
  KEY `multimedia_fk0` (`routes_id`),
  CONSTRAINT `multimedia_fk0` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_point` text NOT NULL,
  `final_point` text NOT NULL,
  `route` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`route_id`),
  UNIQUE KEY `route_id` (`route_id`),
  KEY `routes_fk0` (`user_id`),
  CONSTRAINT `routes_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-04-30 15:06:38
