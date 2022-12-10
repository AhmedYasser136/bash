#!/usr/bin/bash
echo "What is your Logname?"
read name
homedir=`grep ^$name /etc/passwd | cut -d: -f6`
ls -l $homedir
cp -r $homedir/. /tmp 2> /dev/null
ps -f -u $name

