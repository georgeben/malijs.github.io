#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# copy CNAME
cp ./CNAME docs/.vuepress/dist/CNAME

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f https://github.com/malijs/malijs.github.io.git master

cd -
