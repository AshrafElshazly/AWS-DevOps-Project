-- Create a user for the Node.js app
CREATE USER 'app'@'%' IDENTIFIED BY 'app@elshazlii';
GRANT ALL PRIVILEGES ON node_app.* TO 'app'@'%';

-- Create a user for replication
CREATE USER 'replica'@'11.0.6.100' IDENTIFIED BY 'replica@elshazlii';
GRANT REPLICATION SLAVE ON *.* TO 'replica'@'11.0.6.100';
GRANT REPLICATION CLIENT ON *.* TO 'replica'@'11.0.6.100' WITH GRANT OPTION;


-- Flush privileges to apply changes
FLUSH PRIVILEGES;

CREATE DATABASE test;