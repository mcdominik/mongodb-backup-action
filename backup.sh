#!/bin/bash


while getopts c:u: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        c) connection_string=${OPTARG};;
    esac
done


# Set the MongoDB connection string and username
# connection_string="mongodb+srv://default.sjqol14.mongodb.net/"
# username="admin"

# Define the output directory
output_dir="/"

# Run mongodump command
mongodump --uri="$connection_string" --username="$username" --out="$output_dir"
