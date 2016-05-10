# set git stuff
git init
git config user.name "travis ci"
git config user.email "travis@travis-ci.org"

git add .
git commit -m "Updated submodules"

# update submodules
./updateSubmodules.sh
