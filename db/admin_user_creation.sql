CREATE USER 'admin' IDENTIFIED BY 'senha';
CREATE USER 'user'  IDENTIFIED BY 'senha';

GRANT ALL PRIVILEGES ON user_management.users TO 'admin';
GRANT SELECT         ON user_management.users TO 'user';

#--FLUSH PRIVILEGES;
