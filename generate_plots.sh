#!/bin/bash
source /home/vagrant/project/.venv/bin/activate
export HIVE_AUX_JARS_PATH=/usr/local/tez:/usr/local/tez
export HIVE_HOME=/usr/local/hive
export HIVE_CONF_DIR=/usr/local/hive/conf
jupyter nbconvert --execute --to html --output "/home/vagrant/project/generated_plots/generated_plots_${1}" /home/vagrant/project/report.ipynb
