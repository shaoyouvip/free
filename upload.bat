@echo off
cd /d C:\sy\free  REM 进入你的 free 目录

REM 复制扫描的文件到 Git 仓库
copy /Y C:\sy\SubsCheck_Win_GUI\output\mihomo.yaml .
copy /Y C:\sy\SubsCheck_Win_GUI\output\base64.txt .
copy /Y C:\sy\SubsCheck_Win_GUI\output\all.yaml .

REM 添加文件到 Git
git add mihomo.yaml base64.txt all.yaml

REM 检查是否有更改
git diff --cached --quiet && exit

REM 提交更改并推送到 GitHub
git commit -m "Auto update at %date% %time%"
git push origin main
