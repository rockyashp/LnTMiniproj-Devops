#!/bin/bash

LOGFILE="server_health.log"
echo "Server Health Report" >> $LOGFILE
echo "Date: $(date)" >> $LOGFILE

echo "" >> $LOGFILE
echo "1. HOSTNAME" >> $LOGFILE
hostname >> $LOGFILE

echo "" >> $LOGFILE
echo "2. SYSTEM UPTIME" >> $LOGFILE
uptime >> $LOGFILE

echo "" >> $LOGFILE
echo "3. DISK USAGE" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "4. MEMORY USAGE" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "5. TOP 5 MEMORY CONSUMING PROCESSES" >> $LOGFILE
ps aux --sort=-%mem | head -6 >> $LOGFILE

echo "" >> $LOGFILE
echo "6. RUNNING SERVICES" >> $LOGFILE
systemctl list-units --type=service --state=running >> $LOGFILE

echo "" >> $LOGFILE
echo "Report Completed Successfully" >> $LOGFILE
echo "" >> $LOGFILE