#!/usr/bin/perl
# Perl MySQL database connection (perl_mysql_connection.pl)
# 2013-09-26

use Mysql;

$mysql_host = "perl_box";
$mysql_database = "perl_connect";
$mysql_user = "perl_programmer";
$mysql_password = "perl";

$perl_mysql_connect = Mysql->connect($mysql_host, $mysql_database,
$mysql_user, $mysql_password);

if ($perl_mysql_connect) {
       print "Perl have created connection to MySQL database!\n"
} else {
       print "Perl could not create connection to MySQL database!\n"
} 
