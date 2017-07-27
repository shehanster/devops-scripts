# This script gets mysql table to csv 
# To use you need to run this on bash using the collosing command "mysql -h "server-name" -u "root" "-pXXXXXXXX" "database-name" < "mysqldump-to-csv.sql""


SET @TS = DATE_FORMAT(NOW(),'_%Y_%m_%d_%H_%i_%s');
 
SET @FOLDER = '/tmp/';
SET @PREFIX = 'name';
SET @EXT    = '.csv';
 
SET @CMD = CONCAT("SELECT * FROM orders INTO OUTFILE '",@FOLDER,@PREFIX,@TS,@EXT,
    "' FIELDS ENCLOSED BY '\"' TERMINATED BY ';' ESCAPED BY '\"'",
    "  LINES TERMINATED BY '\r\n';");
 
PREPARE statement FROM @CMD;
 
EXECUTE statement;


