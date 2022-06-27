# SELinus cheatsheet

### disable the dontaudit logs to show all blocked things.
```bash
semodule --build --disable_dontaudit
```
### set enforcing mode off so we get all things that would have been denied
```bash
setenforce 0
```
### watch the audit logs to find what is being blocked - saving to ipam-selinux-blocks.log file
```bash
tail -f /var/log/audit/audit.log -n0 | grep denied --line-buffered | tee selinux-blocks.log
```
### Have a browse to see what would have been blocked, and remove any lines you don't want to allow
```bash
vim selinux-blocks.log
```
### compile a working module
```bash
cat selinux-blocks.log | audit2allow -M allowpolicy
semodule -i allowpolicy.pp
```