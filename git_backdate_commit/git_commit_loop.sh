#!/bin/bash

start_date="2022-01-01T12:00:00"
date_format="+%Y-%m-%dT%H:%M:%S"

for i in {1..10}
do
  echo "This is a backdated commit number $i" > "commit_$i.txt"
  git add "commit_$i.txt"
  commit_date=$(date -d "$start_date - $i days" "$date_format")
  git commit -m "Backdated commit number $i" --date="$commit_date"
done

git push origin master
