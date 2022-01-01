#!/bin/bash

start_date="2022-01-01T12:00:00"
date_format="+%Y-%m-%dT%H:%M:%S"

for i in {1..10}
do
  commit_date=$(date -d "$start_date - $i days" "$date_format")
  git add .
  git commit -m "Backdated commit number $i" --date="$commit_date"
done

git push origin master
