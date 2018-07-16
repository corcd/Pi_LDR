#!/bin/bash
# /etc/init.d/LDR
  
### BEGIN INIT INFO
# Provides: embbnux
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: LDR
# Description: This service is used to manage a LDR
### END INIT INFO
  
case "$1" in
    start)
        echo "Starting LDR"
        /home/Public/Pi_LDR/Pi_LDR.py &
        ;;
    stop)
        echo "Stopping LDR"
        #killall Pi_LDR.py
        kill $(ps aux | grep -m 1 'python3 /home/Public/Pi_LDR/Pi_LDR.py' | awk '{ print $2 }')
        ;;
    *)
        echo "Usage: service LDR start|stop"
        exit 1
        ;;
esac
exit 0


# sudo chmod +x /etc/init.d/LDR
# sudo update-rc.d LDR defaults

