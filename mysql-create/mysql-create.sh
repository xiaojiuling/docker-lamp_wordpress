#!/bin/bash
mysql="mysql -uroot -p123@abcD"
#sql="show tables from mysql"
sql="create database wordpress"
$mysql -e "$sql"
