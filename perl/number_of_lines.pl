#!/usr/bin/perl
# Determine Number of Lines in a File (number_of_lines.pl)
# 2013-09-26
 
open(FILEHANDLE, $ARGV[0]) or die ("I do not can not open the file, sry");

@lines=;
print "Number of Lines in the file: " . scalar(@lines) . "\n";
# Perl can Print particular line from the file 
print "Line number 23: ". $lines[22] . "/n"; 
