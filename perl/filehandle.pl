#!/usr/bin/perl
# Open File for Read and Write (filehandle.pl) tekijä: Smaugli 
# 2013-09-26
# Create filehandle for write called WFILEHANDLE for file perl.txt
# If the file does NOT exists, we will create it :) 
open (WFILEHANDLE, ">perl.txt") or die ("ERROR with perl.txt (Can't create it) .\n");

# Insert data to perl.txt
print WFILEHANDLE "Perl Programming Tutorial nuub";

# Close filehandle
close (WFILEHANDLE);

# Create filehandle for Read called RFILEHANDLE for file perl.txt
open (RFILEHANDLE, "

# Read File and Print to 
while () {
	print;
}
print "\n"; 
