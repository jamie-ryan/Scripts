echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jamie-ryan/test.git
git push -u origin master
