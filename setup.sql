
CREATE DATABASE IF NOT EXISTS securedocs;
USE securedocs;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARBINARY(255) NOT NULL,
    role ENUM('admin','user') DEFAULT 'user'
);

-- Sample users
INSERT INTO users (username, password, role) VALUES
('admin', AES_ENCRYPT('admin123', 'secretkey'), 'admin'),
('user1', AES_ENCRYPT('user123', 'secretkey'), 'user');
