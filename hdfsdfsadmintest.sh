sudo -u hdfs hdfs dfsadmin -report
sudo -u hdfs hdfs dfsadmin -safemode enter
sudo -u hdfs hdfs dfsadmin -savenamespace 
sudo -u hdfs hdfs dfsadmin -safemode leave
sudo -u hdfs hdfs dfsadmin -rollEdits 
sudo -u hdfs hdfs dfsadmin -metasave /tmp/backup.file 
sudo -u hdfs hdfs dfsadmin -restoredFailedStorge 
sudo -u hdfs hdfs dfsadmin -refreshNodes 
sudo -u hdfs hdfs dfsadmin -setQuota 10 /tmp/subdir1 
sudo -u hdfs hdfs dfsadmin -clrQuota /tmp/subdir1 
sudo -u hdfs hdfs dfsadmin -setSpaceQuota 10 /tmp/subdir1 
sudo -u hdfs hdfs dfsadmin -clrSpaceQuota /tmp/subdir1 


sudo -u hdfs hdfs dfsadmin -refreshServiceAcl
sudo -u hdfs hdfs dfsadmin -refreshUserToGroupsMappings
sudo -u hdfs hdfs dfsadmin -refreshSuperUserGroupsConfiguration
sudo -u hdfs hdfs dfsadmin -refreshCallQueue
sudo -u hdfs hdfs dfsadmin -refresh
sudo -u hdfs hdfs dfsadmin -reconfig

sudo -u hdfs hdfs dfsadmin -printTopology
sudo -u hdfs hdfs dfsadmin -refreshNameNodes
sudo -u hdfs hdfs dfsadmin -getVolumeReport
sudo -u hdfs hdfs dfsadmin -triggerBlockReport
sudo -u hdfs hdfs dfsadmin -listOpenFiles

sudo -u hdfs hdfs dfsadmin -setBalancerBandwith 100
sudo -u hdfs hdfs dfsadmin -getBalancerBandwith 

sudo -u hdfs hdfs dfsadmin -fetchImage 
sudo -u hdfs hdfs dfsadmin -getDataNodeInfo 

sudo -u hdfs hdfs dfsadmin -allowSnapshot
sudo -u hdfs hdfs dfsadmin -disableSnapshot


sudo -u hdfs hdfs dfsadmin -deleteBlockPool
sudo -u hdfs hdfs dfsadmin -evictWriters


sudo -u hdfs hdfs dfsadmin -finalizeUpgrade
sudo -u hdfs hdfs dfsadmin -rollingUpgrade
sudo -u hdfs hdfs dfsadmin -upgrade

sudo -u hdfs hdfs dfsadmin -shutdownDataNode

sudo -u hdfs hdfs dfsadmin -help

