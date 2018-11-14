#!/bin/bash -x

kinit hdfs/sDMAAdminHDP1@AD.SJM.COM -kt /etc/security/keytabs/sDMAAdminHDP1.keytab

hdfs dfs -put -f /data/projects/MARKET/webmaster/oozie /projects/marketing_analytics/webmaster/

oozie job -oozie http://usspphadop06.sjm.com:11000/oozie -config /data/projects/MARKET/webmaster/webmaster_job.properties -run
