CREATE TABLE users (
                    user_id  INT AUTO_INCREMENT PRIMARY KEY,
                    login    VARCHAR(50)  NOT NULL         ,
                    nome     VARCHAR(50)  NOT NULL         ,
                    telefone VARCHAR(50)                   ,
                    foto     VARCHAR(200)                  ,
                    email    VARCHAR(100) NOT NULL         ,
                    cpf      VARCHAR(14)  NOT NULL         ,
                    password VARCHAR(100) NOT NULL         ,
                    status   VARCHAR(50)  NOT NULL         ,
                    role     VARCHAR(20)  NOT NULL CHECK (role IN ('user', 'admin'))
                   );
