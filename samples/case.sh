#!/bin/bash
# case example
case $1 in
start)
echo starting
;;
stop)
echo stoping
;;
restart)
echo restarting
;;
*)
echo don\'t know
;;
esac

# ;; is only used in case constructs, to indicate the end of an alternative. 