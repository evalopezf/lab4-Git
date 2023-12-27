#!/bin/bash 


input_file="$1"
output_file="${input_file%.fastq}_cut.fastq"

total_lines=$(wc -l < "$input_file")
lines_to_keep=$((total_lines / 10))

echo "$total_lines"

echo "$lines_to_keep"

cut -d $'\n' -f 1-"$lines_to_keep" "$input_file" > "$output_file"

