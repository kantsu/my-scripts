#!/usr/bin/perl -w
# hello_world.pl
# 2013-09-24
use strict;
print "Hello world! :D\n";

$a="5.0"; 	# Setting up our variables... nothing unusual...
$b="5";		# Ha Ha Ha, remember to use all basic stuffsszzsz!
print "Are these variables equal as number? ",$a==$b,"\n";
print "Are the variables equal as strings? ",$a eq $b,"\n";
print "These variables are equal as strings\n" if($a eq $b); # Do not print
print "These variables are equal numerically\n" if($a==$b); # Print this

