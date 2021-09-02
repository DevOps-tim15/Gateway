CREATE DATABASE userauth;

# create root user and grant rights
CREATE USER 'sa'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%';

USE `userauth`;
CREATE TABLE IF NOT EXISTS authorities
(
`id` INTEGER AUTO_INCREMENT,
`user_type` VARCHAR(255),
PRIMARY KEY (id)
);

USE `userauth`;
INSERT INTO `authorities` (`id`,`user_type`) VALUES ('1','ROLE_REGISTERED_USER');
INSERT INTO `authorities` (`id`,`user_type`) VALUES ('2','ROLE_AGENT');
INSERT INTO `authorities` (`id`,`user_type`) VALUES ('3','ROLE_ADMIN');