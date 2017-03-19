# ACADGILD_BD_ASSGN18.1
Creating HBase Table using UNIX shell script

Problem Statement:
Create a HBase table 'customer' with one column family 'details'.
Write a shells script that loads the content of the file customers.dat in the HBase table.
The structure of file looks like: id, name, location, age

The Shell script initiates HBASE, creates a table with name customre with 1 column family details and loads data from the dataset that is stored under the file name Customers.dat and name it customer.sh
Open Terminal 1, to run the script using the command :
sh customer.sh

Open Terminal 2, run HBASE using:
hbase shell

check for table creation using :
list
check for table values using command:
scan 'customer'

Refer to Screenshots in Issues section
