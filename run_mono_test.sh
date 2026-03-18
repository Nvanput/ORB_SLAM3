#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <test_number>"
    echo "Example: $0 0"
    exit 1
fi

# Assign the argument to a variable
FOLDER_NAME=$1
BASE_PATH="/home/niels/Thesis/datasets/${FOLDER_NAME}"

# Run the command with dynamic paths
./Examples/Monocular/mono_euroc \
    ./Vocabulary/ORBvoc.txt \
    "${BASE_PATH}/config_mono.yaml" \
    "${BASE_PATH}" \
    "${BASE_PATH}/timestamps.txt"
