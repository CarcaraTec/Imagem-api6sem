CREATE SCHEMA `access`;

use access;

START TRANSACTION;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    access_type VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);


CREATE TABLE AccessLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    access_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

--COMMIT

--ROLLBACK
