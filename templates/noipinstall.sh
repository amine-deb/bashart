#!/bin/bash
#
############################################################################
#                                                                          #
# Script_name:  NoipInstall.sh                                             #
# Description:  This script install noip.                                  #
# Args:         N/A                                                        #
# Author:       amine                                                      #
# email:        amine.bc@hotmail.com                                       #
#                                                                          #
############################################################################ 
#
# https://www.linuxtopia.org/online_books/linux_beginner_books/debian_linux_desktop_survival_guide/No_IP.shtml
# 

cd /usr/local/src/
wget http://www.noip.com/client/linux/noip-duc-linux.tar.gz
tar xf noip-duc-linux.tar.gz
cd noip-2.1.9-1/
make install

noip2InitFile() {
cat <<'EOF' |  sed '' > noip2
#! /bin/sh
# /etc/init.d/noip2

# Supplied by no-ip.com
# Modified for Debian GNU/Linux by Eivind L. Rygge <eivind@rygge.org>

# . /etc/rc.d/init.d/functions  # uncomment/modify for your killproc

DAEMON=/usr/local/bin/noip2
NAME=noip2

test -x $DAEMON || exit 0

case "$1" in
    start)
    echo -n "Starting dynamic address update: "
    start-stop-daemon --start --pidfile /var/run/noip2.pid \
        --make-pidfile --exec $DAEMON
    echo "noip2." 
    ;;
    stop)
    echo -n "Shutting down dynamic address update:"
    start-stop-daemon --stop --pidfile /var/run/noip2.pid \
        --oknodo --retry 30 --exec $DAEMON
    echo "noip2." 
    ;;

    restart)
    echo -n "Restarting dynamic address update: "
    start-stop-daemon --stop --pidfile /var/run/noip2.pid \
                            --oknodo --retry 30 --exec $DAEMON
    start-stop-daemon --start --pidfile /var/run/noip2.pid \
                            --exec $DAEMON
    echo "noip2." 
    ;;

    *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
esac
exit 0
EOF
}

cd /etc/init.d/
noip2InitFile

/usr/local/bin/noip2 -C 



chmod a+rx /etc/init.d/noip2 
update-rc.d noip2 defaults

systemctl enable noip2.service
systemctl start noip2.service
systemctl status noip2.service

