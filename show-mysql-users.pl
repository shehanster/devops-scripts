#!/usr/bin/perl -w
use DBI;
$dbh = DBI->connect("DBI:mysql:database=mysql;host=mysql1.mydomain.com", "user", "password",{'RaiseError' => 1});
$sql = "select user,host from user";
$sth = $dbh->prepare($sql);
$sth->execute or die "SQL Error: $DBI::errstr\n";
while (@row = $sth->fetchrow_array) {
   $sql = "SHOW GRANTS FOR '$row[0]'\@'$row[1]'\n";
   $sthu = $dbh->prepare($sql);
   $sthu->execute or die "SQL Error: $DBI::errstr\n";
   while(@results = $sthu->fetchrow_array){
       foreach $i (@results){
           print "$i;\n";
   }
}
}

