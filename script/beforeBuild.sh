# set git stuff
git init
git config user.name "travis ci"
git config user.email "travis@travis-ci.org"

# update submodules
./script/updateSubmodules.sh
