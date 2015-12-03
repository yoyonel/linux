# Monitor système: Surveillance et log des activites d'un systeme Linux

## Monitor & LOGs

Utilisation de l'outil (terminal): **dstat**

### Script bash

#### Launch log (manual)

dstat_script.sh:
```bash
#!/bin/bash

# url: http://www.simplehelp.net/2008/11/13/how-to-use-dstat-to-monitor-your-linuxunix-server/
#dstat –output /tmp/dstat_data_mail.csv -CDN 30 360
#mutt -a /tmp/dstat_data_mail.csv -s “Dstat Report for 3 hour run” yoyonel@hotmail.com < /dev/null
#dstat -ts --top-io --top-bio --top-cpu --top-mem --nocolor --output --noheaders /var/log/dstat.csv 5 3 > /dev/null

# record toute les 10s avec enregistrement dans un fichier CSV
#dstat -ta --top-cpu --top-mem -m --io 10 --output ~/log/systemstats.csv > /dev/null

# record dans un log
dstat -ta --top-cpu --top-mem -m --io 10 > ~/log/dstats.log &
```

#### View log

view_logs.sh:
```bash
#bash
tail -f dstats.log
```

### CRON task

$ /etc/cron.d/dstat:
```bash
#  Run dstat and log the reports

   * * * * * root dstat -ts --top-io --top-cpu --top-mem --noheaders --nocolor 5 3 --output /var/log/dstat.csv 5 3 > /dev/null
```

## Dstat: Versatile resource statistics tool
Dstat is a versatile replacement for vmstat, iostat, netstat and ifstat.
Dstat overcomes some of their limitations and adds some extra features, more counters and flexibility.
Dstat is handy for monitoring systems during performance tuning tests, benchmarks or troubleshooting.

Dstat allows you to view all of your system resources in real-time, you can eg. compare disk utilization in combination with interrupts from your IDE controller, or compare the network bandwidth numbers directly with the disk throughput (in the same interval).
http://dag.wiee.rs/home-made/dstat/
Très intéressant comme outil, à appronfondir

## A "live" view of a logfile on Linux
http://www.howtogeek.com/howto/ubuntu/a-live-view-of-a-logfile-on-linux/?PageSpeed=noscript
This approach works for any linux operating system, including Ubuntu, and is probably most often used in conjunction with web development work.
tail -f /path/thefile.log

## Using dstat with scripts and external modules
Here we look at the basic scripting options for dstat as well as an overview of its external modules.
http://articles.slicehost.com/2010/11/12/using-dstat-with-scripts-and-external-modules

## Understanding logrotate on Ubuntu - part 1
http://articles.slicehost.com/2010/6/30/understanding-logrotate-on-ubuntu-part-1

=> logrotate.d/dstat:
```bash
/home/latty/log/dstats.log {
	rotate 5
	weekly
	compress
	missingok
	notifempty
}
```

## LINUX - Free MEM, monitoring, Cron tasks ...

https://docs.google.com/document/d/1Il4_uViPG_b2r8HdpIrf83SEJiOLYzjM2zsMH19q74Y/edit?usp=sharing

### How to Free up Unused Memory in Ubuntu/Linux Mint

http://www.upubuntu.com/2013/01/how-to-free-up-unused-memory-in.html
```bash
sudo sysctl -w vm.drop_caches=3
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
```

=> semble bien fonctionné, faudrait voir en détails l’effet, et à “long terme”.

### Why does ubuntu not seem to release memory?
http://askubuntu.com/questions/507699/why-does-ubuntu-not-seem-to-release-memory
You can free up unused memory using this command:
```bash
sudo sync & sysctl -w vm.drop_caches=3
```
Un peu de détails sur cette commande, toujours utile ^^

### How To : Free Up and Release the Unused/Cached Memory in Ubuntu/Linux Mint

http://www.yourownlinux.com/2013/10/how-to-free-up-release-unused-cached-memory-in-linux.html


### How do I clean or disable the memory cache?
http://askubuntu.com/questions/155768/how-do-i-clean-or-disable-the-memory-cache

=> http://askubuntu.com/a/155777

There's no easy way to disable the cache, but you can achieve the same effect by cleaning it as often as every minute, if you want to:
Make it a cron-job
Press Alt-F2, type gksudo gedit /etc/crontab, and add this line near the bottom:
```bash
*/15 *    * * *   root    sync && echo 3 > /proc/sys/vm/drop_caches
```
This cleans every 15 minutes. You can set to 1 or 5 minutes if you really want to by changing the first parameter to * or */5 instead of */15

=> au boulot IGN
/etc/cron.tab:
```bash
# url: http://askubuntu.com/questions/155768/how-do-i-clean-or-disable-the-memory-cache
*/5 *    * * *   root    sync && echo 3 > /proc/sys/vm/drop_caches
*/5 *    * * *   root    sysctl -w vm.drop_caches=3
```

=> ça semble fonctionner pas mal ... ^^
