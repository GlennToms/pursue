#!/usr/bin/env bash

PATH=/opt/pursue/
FILENAME=pursue

/usr/bin/mkdir $PATH
/usr/bin/cp ./pursue $PATH
/usr/bin/cp ./config $PATH -r
/usr/bin/chmod 755 $PATH -R
/usr/bin/ln $PATH$FILENAME /usr/local/bin/$FILENAME

/usr/bin/cp pursue_autocomplete.sh /etc/bash_completion.d/
/usr/bin/chmod 644 /etc/bash_completion.d/pursue_autocomplete.sh