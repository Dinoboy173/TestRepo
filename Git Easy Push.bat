@echo off

cd /d %~dp0

git add .

git status

:invalidCommitMessage
set /P commitMessage = "Enter commit message here: "

set invalidCommit = ""

if commitMessage == "%invalidCommit%" echo Commit Message Can't Be Empty

git commit -m commitMessage%!

git pull

git push