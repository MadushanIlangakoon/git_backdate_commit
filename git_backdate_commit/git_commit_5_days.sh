#!/bin/bash

# Set the starting date (today)
start_date=$(date +"%Y-%m-%dT12:00:00")

# Loop to make 5 backdated commits for the next 5 days
for i in {0..4}
do
  # Generate a new file or modify an existing file (here we modify a dummy file)
  echo "This is commit number $((i+1))" > "commit_day_$((i+1)).txt"

  # Stage the changes (add the file to the commit)
  git add "commit_day_$((i+1)).txt"

  # Generate the commit date by adding i days to the start date
  commit_date=$(date -d "$start_date + $i days" +"%Y-%m-%dT12:00:00")

  # Make the commit with the generated date
  git commit -m "Commit for day $((i+1))" --date="$commit_date"
done

# Push the commits to the remote repository
git push origin master
