# How do i update or create new tables from the capiq data?
1. you can use the Table Data Import Wizard, helps you name all the headers too.
   1. first rename the titles, you are limited to 64chars per header.
   2. also, i need to set all the data to text (specifically, varchar(255), the double seems to be truncated, esp with negative numbers or if its represented by a bracket)
   3. It's much faster to insert rows using the 
>LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\20210612_screenerdb_3.CSV' <br>
INTO TABLE `20210612_screenerdb` <br>
FIELDS TERMINATED BY ',' <br>
ENCLOSED BY '"' <br>
LINES TERMINATED BY '\r\n'<br> 
IGNORE 1 LINES;<br>

1. Trying to remove duplicates
   1. I get timeout error, so i removed the `Workbench Preferences > SQL Editor > DBMS connection read timeout interval (in seconds)` which was originally 30s
   2. Still, after 50s it timesout, getting "Error Code:1205. Lock wait timeout exceeded; try restarting transaction"
      1. This is because the was an old humongous process running, by doing `show processlist` i found it's id, then i did `KILL <id>` on the process. Thereafter the thing ran fine