CREATE DATABASE if NOT EXISTS mydb DEFAULT CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI;
USE mydb;
CREATE TABLE if NOT EXISTS users(
	user_id INT(10) AUTO_INCREMENT,
	email VARCHAR(50) UNIQUE,
	hashed_pwd BINARY(60) NOT NULL,
	company_name VARCHAR(35) NOT NULL,
	category VARCHAR(20) NOT NULL,
	roles VARCHAR(20) NOT NULL DEFAULT 'user',
	user_name VARCHAR(40) NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	company_reg_num VARCHAR(50) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARACTER SET UTF8;

CREATE TABLE if NOT EXISTS advert(
	ad_id INT(10) AUTO_INCREMENT,
	user_id INT(10) NOT NULL,
	ad_name VARCHAR(50) NULL,
	target_age VARCHAR(20) NOT NULL,
	target_gender VARCHAR(20) NOT NULL,
	budget VARCHAR(20) NOT NULL,
	period VARCHAR(100) NOT NULL,
	location VARCHAR(50) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (ad_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET UTF8;

CREATE TABLE if NOT EXISTS face(
	face_id INT(10) AUTO_INCREMENT,
	face_array BLOB NOT NULL,
	input_image VARCHAR(20) NOT NULL,
	location VARCHAR(30) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (face_id)
) ENGINE=InnoDB DEFAULT CHARACTER SET UTF8;

CREATE TABLE if NOT EXISTS target(
	target_id INT(10) AUTO_INCREMENT,
	face_id INT(10) NULL,
	ad_id INT(10) NULL,
	gender VARCHAR(10) NOT NULL,
	age VARCHAR(10) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
	PRIMARY KEY (target_id),
	FOREIGN KEY (ad_id) REFERENCES advert(ad_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (face_id) REFERENCES face(face_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET UTF8;