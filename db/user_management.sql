CREATE SCHEMA user_management;

USE user_management;

CREATE TABLE users (
                    id       INT AUTO_INCREMENT             PRIMARY KEY,
                    username VARCHAR(50)           NOT NULL UNIQUE     ,
                    password VARCHAR(100)          NOT NULL            ,
                    role     ENUM('user', 'admin') NOT NULL
                   );


INSERT INTO users (username, password, role)
VALUES
('admin'  , 'senha', 'admin'),
('usuario', 'senha', 'user' );

#--COMMIT
