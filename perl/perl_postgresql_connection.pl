#!/usr/bin/perl
# Perl PostgreSQL DB Connection! (perl_postgresql_connection.pl)
# 2013-09-26 

# Load Perl PostgreSQL module
use DBI;
 
$postgresql_database=perl_connect;
$postgresql_user=perl_programmer;
$postgresql_password=perl;
$postgresql_host=perl_box;

# Connect to Perl to PostgreSQL database
my $perl_postgresql =
DBI->connect("DBI:Pg:dbname=$postgresql_database;host=$postgresql_host",
"$postgresql_user", "$postgresql_password");

if($perl_postgresql) {
       print "Perl established connection to PostgreSQL database\n";
} 
