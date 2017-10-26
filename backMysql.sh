#!/bin/bash
# declare an array called array and define 3 vales
dbNames=( tos_log_iqiyi_s3 tos_log_iqiyi_s4 )
for dbName in "${dbNames[@]}"
do
     mysqldump -h127.0.0.1 -uroot -p123456 ${dbName}>${dbName}.sql && tar -zcvf ${dbName}.tar.gz ${dbName}.sql
     rm -rf ${dbName}.sqlls
done
