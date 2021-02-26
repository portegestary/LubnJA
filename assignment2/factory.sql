CREATE TABLE Factory (
id VARCHAR(255) NOT NULL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
latitude DECIMAL(10, 8),
longitude DECIMAL(11, 8),
street TEXT,
city TEXT,
postal_code VARCHAR(6),
created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Sensor (
id VARCHAR(255) NOT NULL PRIMARY KEY,
factory_id VARCHAR(255) NOT NULL,
sensor_type VARCHAR(255) NOT NULL,
created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE SensorValue (
sense_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
sensor_id VARCHAR(255) NOT NULL,
sensor_value DOUBLE NOT NULL,
created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);