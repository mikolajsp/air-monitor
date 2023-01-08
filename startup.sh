#!/bin/bash

# setup directories in hdfs
hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/project
hdfs dfs -mkdir /user/project/data
hdfs dfs -mkdir /user/project/maps

#download and unzip static data
curl "https://gis-support.pl/wp-content/uploads/dzielnice_Warszawy.zip" -o maps.zip
unzip -o maps.zip -d maps
rm maps.zip

#create table in hive for serving air quality data
hive -f create_air_quality_table.hql

#crate table in hbase for serving map data
./create_map_table.sh
