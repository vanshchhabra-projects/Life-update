
#!/bin/bash

# Repo Path
cd /home/deftsoft/vc/Life-update || exit

# Add all changes
git add .

# Exit if no changes
git diff --cached --quiet && exit

# Commit with timestamp
git commit -m "Daily update $(date '+%d-%m-%Y %I:%M %p')"

# Push to GitHub
git push origin main	
