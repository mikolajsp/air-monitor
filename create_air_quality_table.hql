CREATE TABLE IF NOT EXISTS aqicn_readings 
(
 station_id INT,
 station_name STRING,
 latitude DOUBLE,
 longitude DOUBLE,
 location STRING,
 datetime TIMESTAMP,
 aqi INT,
 pm10 INT,
 pm25 INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\;'
LINES TERMINATED BY '\n'
STORED AS AVRO;
