hdfs dfs -put /etc/hosts contents

echo "hdfs dfsadmin -allowSnapshot contents"
hdfs dfsadmin -allowSnapshot contents
echo "hdfs lsSnapshottableDir"
hdfs lsSnapshottableDir
echo "hdfs dfs -createSnapshot /user/training/contents snapshotv1"
hdfs dfs -createSnapshot /user/training/contents snapshotv1
#hdfs dfs -renameSnapshot /user/training/contents s20200612-010729.527 testsnapshot
echo "hdfs dfs -ls /user/training/contents/.snapshot/"
hdfs dfs -ls /user/training/contents/.snapshot/
echo "hdfs dfs -ls /user/training/contents/.snapshot/snapshotv1/"
hdfs dfs -ls /user/training/contents/.snapshot/snapshotv1/
echo "hdfs dfs -createSnapshot /user/training/contents snapshotv2"
hdfs dfs -createSnapshot /user/training/contents snapshotv2
echo "hdfs dfs -rm contents/hosts"
hdfs dfs -rm contents/hosts
hdfs dfs -put /etc/services contents/

echo "hdfs dfs -createSnapshot /user/training/contents snapshotv3"
hdfs dfs -createSnapshot /user/training/contents snapshotv3
echo "hdfs snapshotDiff /user/training/contents snapshotv2 snapshotv3"
hdfs snapshotDiff /user/training/contents snapshotv2 snapshotv3
echo "hdfs dfsadmin -disallowSnapshot contents"
hdfs dfsadmin -disallowSnapshot contents
echo "hdfs dfs -deleteSnapshot /user/training/contents snapshotv1"
hdfs dfs -deleteSnapshot /user/training/contents snapshotv1
echo "hdfs dfs -deleteSnapshot /user/training/contents snapshotv3"
hdfs dfs -deleteSnapshot /user/training/contents snapshotv3
echo "hdfs dfs -deleteSnapshot /user/training/contents snapshotv2"
hdfs dfs -deleteSnapshot /user/training/contents snapshotv2
echo "hdfs dfsadmin -disallowSnapshot contents"
hdfs dfsadmin -disallowSnapshot contents
echo "hdfs lsSnapshottableDir"
hdfs lsSnapshottableDir

hdfs dfs -rm contents/services
