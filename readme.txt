readme
git config --global user.name "Adela"
git config --global user.email "15757124551@163.com"

git init
git status
git add readme.txt
git commit -m "create readme.txt"
git diff readme.txt

git log --pretty=oneline
git reset --hard 123456

git branch
git branch dev
git checkout dev
git merge dev