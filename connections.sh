#!/bin/sh
# show all users currently logged in via SSH and SAMBA
echo SFTP/SSH Users:
last | head
echo _______________

echo SAMBA Users:
smbstatus --shares
echo _______________

echo ISCSI Connection:
ctladm islist
echo _______________

echo NFS Users:
netstat -a | grep nfs
