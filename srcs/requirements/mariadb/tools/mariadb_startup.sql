CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'kmendes-'@'%' IDENTIFIED BY 'qwertyuiop';
GRANT ALL PRIVILEGES ON wordpress.* TO 'kmendes-'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';