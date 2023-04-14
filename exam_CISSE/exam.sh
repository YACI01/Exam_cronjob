#!/bin/bash

function get_sales{
	sales=$(curl -s "https://0.0.0.0:5000/$1")
	echo "$1:$sales"
}

while true; do
	timestamp=$(date)
	echo "$timestamp"
	get_sales "rtx3060"
	get_sales "rtx3070"
	get_sales "rtx3080"
	get_sales "rtx3090"
	get_sales "rx6700"
	sleep 60
done > sales.txt
