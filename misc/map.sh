#!/bin/bash
declare -A map=(["100"]="1" ["200"]="2")
echo ${!map[@]}