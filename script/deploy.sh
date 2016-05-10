git add .
git commit -m "Updated submodules"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:test > /dev/null 2>&1
