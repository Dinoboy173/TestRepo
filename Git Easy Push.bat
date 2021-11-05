@echo off

cd /d %~dp0

git add .

git status

:invalidCommitMessage
set /P commitMessage = "Enter commit message here: "

set invalidCommit = ""

if /i commitMessage == "%invalidCommit%" echo Commit Message Can't Be Empty

if /i commitMessage == "%invalidCommit%" goto invalidCommitMessage

git commit -m commitMessage%!

git pull

git push