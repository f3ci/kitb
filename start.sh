#!/bin/bash

prog=/usr/bin/vncpasswd
#default paassword
mypass="123456"

/usr/bin/expect <<EOF
spawn "$prog"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect "Would you like to enter a view-only password (y/n)?"
send "y\r"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect eof
exit
EOF

export USER=root
vncserver :0 -geometry 1920x1080 -depth 16
vncserver -kill :0
echo "/usr/bin/startx" >> /root/.vnc/xstartup
vncserver :0 -geometry 1920x1080 -depth 16

/usr/share/novnc/utils/launch.sh --listen 8082 --vnc localhost:5900
