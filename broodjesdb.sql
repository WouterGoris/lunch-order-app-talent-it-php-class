DROP DATABASE IF EXISTS 'broodjesapp';
CREATE DATABASE 'broodjesapp' CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP USER IF EXISTS 'broodjesapp'@'localhost';
CREATE USER 'broodjesapp'@'localhost' IDENTIFIED BY 'php123';

GRANT ALL ON 'broodjesapp'.* TO 'broodjesapp'@'localhost';

USE 'broodjesapp';

DROP TABLE IF EXISTS 'order';
CREATE TABLE 'order' (
 'id' INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
 'datum' TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP();
 'soep' BOOLEAN DEFAULT 'false';
 'broodje_id' INT UNSIGNED NOT NULL;
 'soep_id' INT UNSIGNED NOT NULL;
 'isGroot' BOOLEAN DEFAULT 'false';
 'isWit' BOOLEAN DEFAULT 'false';
 
) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS 'soep';
CREATE TABLE 'soep' (
 'id' INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
 'dag' VARCHAR(30) NOT NULL DEFAULT '';
 'soep' VARCHAR(30) NOT NULL DEFAULT '';
) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS 'order_broodje';
CREATE TABLE 'order_broodje' (
    'broodje_id' INT UNSIGNED NOT NULL;
    'order_id' INT UNSIGNED NOT NULL;

) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';


DROP TABLE IF EXISTS 'broodje';
CREATE TABLE 'broodje' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
    'isWit' BOOLEAN DEFAULT 'true';
    'prijs' INT DEFAULT 0;

) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS 'user';
CREATE TABLE 'user' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
    'username' VARCHAR(30) NOT NULL DEFAULT '';
    'naam' VARCHAR(30) NOT NULL DEFAULT '';
    'voornaam' VARCHAR(30) NOT NULL DEFAULT '';
    'email' VARCHAR(30) NOT NULL DEFAULT '';
    'potje' INT UNSIGNED NOT NULL DEFAULT 0;

) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS 'supplementen';
CREATE TABLE 'supplementen' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
    'supplement' VARCHAR(30) NOT NULL;
) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';