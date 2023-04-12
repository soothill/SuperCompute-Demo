# SuperCompute-Demo

# These are the commands to start and redeploy the environment

cmd /c start /min ""  powershell  -windowstyle hidden -executionpolicy bypass -noninteractive  c:\Users\darre\visual~1\superc~1\startVMs.ps1

cmd /c start /min "" powershell  -windowstyle hidden -executionpolicy bypass -noninteractive " c:\Users\darre\visual~1\superc~1\redeploy.PS1

cmd /c start  powershell  -windowstyle hidden -executionpolicy bypass -noninteractive " c:\Users\darre\visual~1\superc~1\redeployVMs.ps1

# This should go in the /etc/wsl.conf file to get systemd to startup on bootup

[boot]
systemd=true

# Automatically startup WSL on boot

# Windows key + R
shell:startup


# Create a vbscript file

set ws=wscript.CreateObject("wscript.shell")
ws.run "wsl -d ubuntu", 0, true


