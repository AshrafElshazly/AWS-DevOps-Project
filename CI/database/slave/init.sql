-- Create a user for the Node.js app
CREATE USER 'app'@'%' IDENTIFIED BY 'app_password';
GRANT ALL PRIVILEGES ON node_app.* TO 'app'@'%';

-- Create a user for replication
CREATE USER 'replica'@'%' IDENTIFIED BY 'replica_password';
GRANT REPLICATION SLAVE ON *.* TO 'replica'@'%';
GRANT REPLICATION CLIENT ON *.* TO 'replica'@'%';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;
