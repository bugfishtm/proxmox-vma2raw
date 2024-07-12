@echo off
cd /d %~dp0
echo ------------------------
echo Do you want this Repo
echo with version code 1.0?
echo ------------------------
pause
git add .
git commit -m "1.0"
git push -u origin main
pause