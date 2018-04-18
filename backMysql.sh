#!/bin/bash
# declare an array called array and define 3 vales
dbNames=( rog_log_amz_s999 )
for dbName in "${dbNames[@]}"
do
     mysqldump -h127.0.0.1 -uroot -pkunlun123sjsy456 ${dbName}>${dbName}.sql && tar -zcvf ${dbName}.tar.gz ${dbName}.sql
     rm -rf ${dbName}.sql
	 ls -alh
done
