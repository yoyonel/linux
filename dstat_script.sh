#!/bin/bash

# url: http://www.simplehelp.net/2008/11/13/how-to-use-dstat-to-monitor-your-linuxunix-server/
#dstat –output /tmp/dstat_data_mail.csv -CDN 30 360
#mutt -a /tmp/dstat_data_mail.csv -s “Dstat Report for 3 hour run” yoyonel@hotmail.com < /dev/null
#dstat -ts --top-io --top-bio --top-cpu --top-mem --nocolor --output --noheaders /var/log/dstat.csv 5 3 > /dev/null

# record toute les 10s avec enregistrement dans un fichier CSV 
#dstat -ta --top-cpu --top-mem -m --io 10 --output ~/log/systemstats.csv > /dev/null 

# record dans un log
dstat -ta --top-cpu --top-mem -m --io 10 > ~/log/dstats.log &
