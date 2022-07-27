# SYSTEMCTL

## VIEWING systemd INFORMATION
|COMMAND | DESCRIPTION
|:---  |:--- |
| systemctl list-dependencies     | Show a unit’s dependencies               |
| systemctl list-sockets List     | sockets and what activates               |
| systemctl list-jobs View active | systemd jobs                             |
| systemctl list-unit-files       | See unit files and their states          |
| systemctl list-units            | Show if units are loaded/active          |
| systemctl get-default           | List default target (like run level)     |

## WORKING WITH SERVICES

|COMMAND | DESCRIPTION|
|:---  |:--- |
|systemctl stop service |Stop a running service|
|systemctl start service |Start a service|
|systemctl restart service |Restart a running service|
|systemctl reload service |Reload all config files in service|
|systemctl daemon-reload |Must run to reload changed unit files|
|systemctl status service |See if service is running/enabled|
|systemctl --failed Shows |services that failed to run|
|systemctl reset-failed |Resets any units from failed state|
|systemctl enable service |Enable a service to start on boot|
|systemctl disable service |Disable service--won’t start at boot|
|systemctl show service |Show properties of a service (or other unit)|
|systemctl edit service |Create snippit to drop in unit file|
|systemctl edit --full service |Edit entire unit file for service|
|systemctl -H host status network |Run any systemctl command remotely|

## CHANGING SYSTEM STATES

|COMMAND | DESCRIPTION|
|:---  |:--- |
|systemctl reboot |Reboot the system (reboot.target)|
|systemctl poweroff |Power off the system (poweroff.target)|
|systemctl emergency |Put in emergency mode (emergency.target)|
|systemctl default |Back to default target (multi-user.target)|

## VIEWING LOG MESSAGES

|COMMAND | DESCRIPTION|
|:---  |:--- |
|journalctl |Show all collected log messages|
|journalctl -u |network.service See network service messages|
|journalctl -f |Follow messages as they appear|
|journalctl -k |Show only kernel messages|

## USING UNIT FILES
```
Besides services, most systemd commands can work with these unit types: paths,
slices, snapshots, sockets, swaps, targets, and timers
```