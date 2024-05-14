CREATE SCHEMA `access`;

use access;

START TRANSACTION;

CREATE TABLE users (
                    user_id  INT AUTO_INCREMENT PRIMARY KEY,
                    username VARCHAR(50)  NOT NULL         ,
                    email    VARCHAR(100) NOT NULL         ,
                    cpf      VARCHAR(14)  NOT NULL         ,
                    password VARCHAR(100) NOT NULL         ,
                    role     VARCHAR(20)  NOT NULL CHECK (role IN ('user', 'admin'))
                   );


CREATE TABLE AccessLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    access_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

#--COMMIT
#--ROLLBACK
