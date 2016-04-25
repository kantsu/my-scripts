#!/usr/bin/perl
# 2013-09-26
# Reading command line arguments with perl (arguments.pl)

# @ARGV is Perl build-in array 
# @ARGV contains all arguments passed during command line execution
print join(" ", @ARGV);

# Usage: ./arguments.pl <STUFF HERE>
print "\n" . $ARGV[0] . $ARGV[1] . $ARGV[2] . $ARGV[3] . $ARGV[4] . $ARGV[5] . "\n";  
