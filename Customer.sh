#!/bin/shell
start-hbase.sh
echo "create 'customer', 'details'" | hbase shell
while read -r line
do
echo $line
id=`echo $line | cut -d',' -f1`
echo "id "$id
name=`echo $line | cut -d',' -f2`
echo "name "$name
loc=`echo $line | cut -d',' -f3`
echo "loc "$loc
age=`echo $line | cut -d',' -f4`
echo "age "$age
echo "put 'customer', '$id', 'details:name', '$name'" | hbase shell
echo "put 'customer', '$id', 'details:loc', '$loc'" | hbase shell
echo "put 'customer', '$id', 'details:age', '$age'" | hbase shell
done < Customers.dat
