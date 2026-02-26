START TRANSACTION;

CREATE DATABASE chicken_grazing_monitoring;
USE chicken_grazing_monitoring;


CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    date_info DATE NOT NULL   
);


CREATE TABLE chickens (
    chicken_id INT AUTO_INCREMENT PRIMARY KEY,
    breed VARCHAR(50)
);


CREATE TABLE user_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    chicken_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (chicken_id) REFERENCES chickens(chicken_id)
);
COMMIT;