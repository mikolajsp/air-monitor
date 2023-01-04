#!/bin/bash
if [[ $(echo "exists 'region_borders'" | /usr/local/hbase/bin/hbase shell -n | grep 'not exist') ]]; 
then 
	echo "create 'region_borders', 'map_files'" | /usr/local/hbase/bin/hbase shell -n
fi
