# IPTABLES


> -A --append Add one or more rules to the end of the selected chain

> -C --check  Check for a rule matching the specifications in the selected chain

> -D --delete Delete one or more rules from the selected chain

> -F --flush  Delete all the rules one-by-one

> -I --insert Insert one or more rules into the selected chain as the given rule number

> -L --list   Display the rules in the selected chain

> -n --numeric    Display the IP address or hostname and post number in numeric format

> -N --new-chain <name>   Create a new user-defined chain

> -v --verbose    Provide more information when used with the list option

> -X --delete-chain <name>    Delete the user-defined chain

> -p : protocole (-p tcp)

> -s : source (ip, réseau)

> -j : action  (DROP/ACCEPT)

> -d :  destination (ip, net)

> -i : inlet interface  (eth0...)

> -o : outlet interface

> --sport 80 : a port

> -m multiport --sport 80,443 

> -t : type (NAT...)