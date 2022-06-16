#!/bin/bash
# /etc/init.d/deamon

# Supplied by amine-deb


DAEMON=/usr/local/bin/appbin
NAME=app

test -x $DAEMON || exit 0

case "$1" in
    start)
    echo -n "Starting $NAME : "
    start-stop-daemon --start --pidfile /var/run/$NAME.pid \
        --make-pidfile --exec $DAEMON
    echo "$NAME" 
    ;;
    stop)
    echo -n "Shutting down $NAME :"
    start-stop-daemon --stop --pidfile /var/run/$NAME.pid \
        --oknodo --retry 30 --exec $DAEMON
    echo "$NAME" 
    ;;

    restart)
    echo -n "Restarting $NAME : "
    start-stop-daemon --stop --pidfile /var/run/$NAME.pid \
                            --oknodo --retry 30 --exec $DAEMON
    start-stop-daemon --start --pidfile /var/run/$NAME.pid \
                            --exec $DAEMON
    echo "$NAME" 
    ;;

    *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
esac
exit 0