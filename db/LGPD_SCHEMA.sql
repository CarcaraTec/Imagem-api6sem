use imagem;

CREATE TABLE TERMO(
                   ID_TERMO   INT AUTO_INCREMENT PRIMARY KEY   ,
                   NM_VERSAO  INT          NOT NULL            ,
                   DS_TERMO   VARCHAR(255) NOT NULL            ,
                   DS_CRIADOR VARCHAR(255) NOT NULL            ,
                   DH_CRIACAO DATETIME     DEFAULT CURRENT_TIMESTAMP
                  );

CREATE TABLE ITEM (
                    ID_ITEM       INT AUTO_INCREMENT PRIMARY KEY,
                    ID_TERMO      INT          NOT NULL         ,
                    DS_ITEM       VARCHAR(255) NOT NULL         ,
                    SN_MANDATORIO CHAR(1)      NOT NULL         ,
                    FOREIGN KEY(ID_TERMO) REFERENCES TERMO(ID_TERMO)
                   );

CREATE TABLE ITENS_USUARIO(
                           ID_ITEM_USUARIO INT AUTO_INCREMENT PRIMARY KEY  ,
                           ID_ITEM         INT NOT NULL                    ,
                           USER_ID      INT NOT NULL                    ,
                           FOREIGN KEY(ID_ITEM)    REFERENCES ITEM(ID_ITEM),
                           FOREIGN KEY(USER_ID) REFERENCES USER(USER_ID)
                          );
