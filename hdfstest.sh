#upload test contents
hdfs dfs -rm -r -skipTrash contents
hdfs dfs -rm -r -skipTrash *.txt
hdfs dfs -rm -skipTrash /tmp/*.txt
hdfs dfs -rm -r -skipTrash /tmp/subdir1
hdfs dfs -rm -r -skipTrash testdirhome
hdfs dfs -mkdir contents
hdfs dfs -put contents/* contents/
cd contents
rm localmerge.txt
rm aget.txt



echo "********************"
echo "test start"
echo "********************"
echo "mkdir/rmdir"
echo "********************"
# mkdir
echo "hdfs dfs -mkdir /tmp/testdir"
hdfs dfs -mkdir /tmp/testdir
echo "hdfs dfs -mkdir -p /tmp/subdir1/subdir2/subdir3"
hdfs dfs -mkdir -p /tmp/subdir1/subdir2/subdir3
echo "hdfs dfs -mkdir testdirhome"
hdfs dfs -mkdir testdirhome

# review mkdir
echo "hdfs dfs -ls /tmp"
hdfs dfs -ls /tmp
echo "hdfs dfs -ls -R /tmp/subdir1"
hdfs dfs -ls -R /tmp/subdir1
echo "hdfs dfs -ls"
hdfs dfs -ls

# rmdir
echo "hdfs dfs -rmdir /tmp/testdir"
hdfs dfs -rmdir /tmp/testdir
echo "hdfs dfs -rmdir testdirhome"
hdfs dfs -rmdir testdirhome
# Fail
echo "hdfs dfs -rmdir /tmp/subdir1"
hdfs dfs -rmdir /tmp/subdir1  

echo "********************"
echo "ls/find/cat/head/tail/text"
echo "********************"
echo "hdfs dfs -ls /tmp"
hdfs dfs -ls /tmp
echo "hdfs dfs -ls -R /tmp/subdir1"
hdfs dfs -ls -R /tmp/subdir1
echo 'hdfs dfs -find -name "*.txt" -print'
hdfs dfs -find -name "*.txt" -print
echo 'hdfs dfs -find -iname "*TEST*" -print'
hdfs dfs -find -iname "*TEST*" -print
echo "hdfs dfs -cat contents/a.txt"
hdfs dfs -cat contents/a.txt
echo "hdfs dfs -head contents/access.log"
hdfs dfs -head contents/access.log
echo "hdfs dfs -tail contents/access.log"
hdfs dfs -tail contents/access.log
echo "hdfs dfs -text contents/access.log"
hdfs dfs -text contents/access.log

#
echo "********************"
echo "put/copyFromLocal/moveFromLocal"
echo "********************"
echo "hdfs dfs -put a.txt /tmp"
hdfs dfs -put a.txt /tmp
echo "hdfs dfs -copyFromLocal a.txt /tmp/a1.txt"
hdfs dfs -copyFromLocal a.txt /tmp/a1.txt
echo "hdfs dfs -moveFromLocal d.txt /tmp/"
hdfs dfs -moveFromLocal d.txt /tmp/
echo "hdfs dfs -ls /tmp/*.txt"
hdfs dfs -ls /tmp/*.txt
echo "ls *.txt"
ls *.txt

echo "********************"
echo "get/copyToLocal/moveToLocal"
echo "********************"
echo "hdfs dfs -get /tmp/a.txt aget.txt"
hdfs dfs -get /tmp/a.txt aget.txt
echo "hdfs dfs -copyToLocal /tmp/d.txt d.txt"
hdfs dfs -copyToLocal /tmp/d.txt d.txt
echo "hdfs dfs -moveToLocal /tmp/d.txt x.txt"
hdfs dfs -moveToLocal /tmp/d.txt x.txt
echo "ls *.txt"
ls *.txt

echo "********************"
echo "getmerge"
echo "********************"
echo "hdfs dfs -getmerge contents/a.txt contents/b.txt contents/c.txt localmerge.txt "
hdfs dfs -getmerge contents/a.txt contents/b.txt contents/c.txt localmerge.txt 
echo "cat localmerge.txt"
cat localmerge.txt

echo "********************"
echo "cp/mv/rm"
echo "********************"
echo "hdfs dfs -cp /tmp/a.txt /tmp/acp.txt"
hdfs dfs -cp /tmp/a.txt /tmp/acp.txt
echo "hdfs dfs -cp /tmp/b.txt c.txt /tmp/subdir1/"
hdfs dfs -cp contents/b.txt contents/c.txt /tmp/subdir1/
echo "hdfs dfs -cp contents/access.log /tmp/subdir1"
hdfs dfs -cp contents/access.log /tmp/subdir1
echo "hdfs dfs -ls /tmp/subdir1"
hdfs dfs -ls /tmp/subdir1
echo "hdfs dfs -ls /tmp/"
hdfs dfs -ls /tmp/
echo "hdfs dfs -mv /tmp/a.txt /tmp/subdir1/"
hdfs dfs -mv /tmp/a.txt /tmp/subdir1/
echo "hdfs dfs -mv /tmp/b.txt /tmp/subdir1/bren.txt"
hdfs dfs -mv /tmp/b.txt /tmp/subdir1/bren.txt
echo "hdfs dfs -ls /tmp/subdir1"
hdfs dfs -ls /tmp/subdir1
echo "hdfs dfs -rm -skipTrash /tmp/acp.txt"
hdfs dfs -rm -skipTrash /tmp/acp.txt
echo "hdfs dfs -ls /tmp/acp.txt"
hdfs dfs -ls /tmp/acp.txt
echo "hdfs dfs -rm -R -skipTrash /tmp/subdir1"
hdfs dfs -rm -R -skipTrash /tmp/subdir1
echo "hdfs dfs -ls /tmp/subdir1"
hdfs dfs -ls /tmp/subdir1


echo "********************"
echo "ouchz/truncat/appendToFile"
echo "********************"
echo "hdfs dfs -touchz /tmp/zero.txt"
hdfs dfs -touchz /tmp/zero.txt
echo "hdfs dfs -ls /tmp/zero.txt"
hdfs dfs -ls /tmp/zero.txt
#echo "hdfs dfs -cp contents/access.log /tmp"
#hdfs dfs -cp contents/access.log /tmp
echo "hdfs dfs -truncate 10 /tmp/access.log"
hdfs dfs -truncate 10 /tmp/access.log
echo "hdfs dfs -appendToFile /tmp/access.log contents/a.txt"
hdfs dfs -appendToFile contents/a.txt /tmp/access.log 
echo "hdfs dfs -cat /tmp/access.log"
hdfs dfs -cat /tmp/access.log
echo "cat /etc/hosts | hdfs dfs -appendToFile -"
cat /etc/hosts | hdfs dfs -appendToFile - /tmp/access.log
echo "hdfs dfs -cat /tmp/access.log"
hdfs dfs -cat /tmp/access.log


echo "********************"
echo "count/df/du/dus/stat/test"
echo "********************"
echo "hdfs dfs -cp contents/*.txt /tmp"
hdfs dfs -cp contents/*.txt /tmp
echo "hdfs dfs -count /tmp"
hdfs dfs -count /tmp
echo "hdfs dfs -count /tmp/access.log"
hdfs dfs -count /tmp/access.log
echo "hdfs dfs -count -v -h /tmp"
hdfs dfs -count -v -h /tmp
echo "hdfs dfs -df /tmp"
hdfs dfs -df /tmp
echo "hdfs dfs -df -h /tmp"
hdfs dfs -df -h /tmp
echo "hdfs dfs -du /tmp"
hdfs dfs -du /tmp
echo "hdfs dfs -du -h -s /tmp"
hdfs dfs -du -h -s /tmp
echo "hdfs dfs -stat /tmp/access.log"
hdfs dfs -stat /tmp/access.log
echo 'hdfs dfs -stat "type:%F size:%b name:%n" /tmp/access.log'
hdfs dfs -stat "type:%F size:%b name:%n" /tmp/access.log
echo "hdfs dfs -test -e /tmp/access.log"
hdfs dfs -test -e /tmp/access.log
echo $?
echo "hdfs dfs -test -e /tmp/A.TXT"
hdfs dfs -test -e /tmp/A.TXT
echo $?

echo "********************"
echo "checksum/chown/chgrp/touch"
echo "********************"
echo "hdfs dfs -cp contents/*.txt /tmp"
hdfs dfs -cp contents/*.txt /tmp
echo "hdfs dfs -ls /tmp/a.txt /tmp/b.txt"
hdfs dfs -ls /tmp/a.txt /tmp/b.txt
echo "sudo -u hdfs hdfs dfs -chown hdfs /tmp/a.txt"
sudo -u hdfs hdfs dfs -chown hdfs /tmp/a.txt
echo "sudo -u hdfs hdfs dfs -chown testuser:testgrp /tmp/a.txt"
sudo -u hdfs hdfs dfs -chown testuser:testgrp /tmp/a.txt
echo "sudo -u hdfs hdfs dfs -chgrp testgrp /tmp/b.txt"
sudo -u hdfs hdfs dfs -chgrp testgrp /tmp/b.txt
echo "hdfs dfs -ls /tmp/a.txt /tmp/b.txt"
hdfs dfs -ls /tmp/a.txt /tmp/b.txt
sudo -u hdfs hdfs dfs -chmod 666 /tmp/a.txt
echo "sudo -u hdfs hdfs dfs -chmod 666 /tmp/a.txt"
hdfs dfs -ls /tmp/a.txt
echo "hdfs dfs -touch /tmp/z.txt"
hdfs dfs -touch /tmp/z.txt
echo "hdfs dfs -touch -t20200609230000 /tmp/a.txt"
hdfs dfs -touch -t20200609230000 /tmp/a.txt

echo "********************"
echo "expunge/setrep"
echo "********************"
echo "hdfs dfs -cp /tmp/a.txt /tmp/aa.txt"
hdfs dfs -cp /tmp/a.txt /tmp/aa.txt
echo "hdfs dfs -cp /tmp/a.txt /tmp/bb.txt"
hdfs dfs -cp /tmp/a.txt /tmp/bb.txt
echo "hdfs dfs -rm /tmp/aa.txt"
hdfs dfs -rm /tmp/aa.txt 
echo "hdfs dfs -ls -R .Trash/"
hdfs dfs -ls -R .Trash/
echo "hdfs dfs -expunge"
hdfs dfs -expunge 
echo "hdfs dfs -ls -R .Trash/"
hdfs dfs -ls -R .Trash/
echo "hdfs dfs -expunge "
hdfs dfs -expunge 
echo "hdfs dfs -ls -R .Trash/"
hdfs dfs -ls -R .Trash/
echo "hdfs dfs -rm /tmp/bb.txt"
hdfs dfs -rm /tmp/bb.txt 
echo "hdfs dfs -ls -R .Trash/"
hdfs dfs -ls -R .Trash/
echo "hdfs dfs -expunge -immediate"
hdfs dfs -expunge -immediate
echo "hdfs dfs -ls -R .Trash/"
hdfs dfs -ls -R .Trash/

echo "hdfs dfs -ls /tmp/a.txt"
hdfs dfs -ls /tmp/a.txt
echo "hdfs dfs -setrep 5 /tmp/a.txt"
hdfs dfs -setrep 5 /tmp/a.txt
echo "hdfs dfs -ls /tmp/a.txt"
hdfs dfs -ls /tmp/a.txt

echo "********************"
echo "usage/help"
echo "********************"
echo "hdfs dfs -usage cat"
hdfs dfs -usage cat
echo "hdfs dfs -help cat"
hdfs dfs -help cat
