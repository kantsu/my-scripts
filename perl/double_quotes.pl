#!/usr/bin/perl
# Double-Quoted scalar strings (double_quotes.pl)
# 2013-09-25

$scalar_string1="perl";
print "String 1: ".$scalar_string1.\"n";
$scalar_string2="#!/usr/bin/perl";
print "String 2: ".$scalar_string2."\n";
$scalar_string3="Perl
Programming
Tutorial";
print "String 3: ".$scalar_string3."\n";
$scalar_string4="Perl\n";
print "String 4: ".$scalar_string4."\n";
$scalar_string5="\'\'\\\"";
print "String 5: ".$scalar_string5."\n";
$scalar_string6="";
print "String 6: ".$scalar_string6."\n";

# add "!" ASCII character in octal form !=041
$scalar_string7="I\'m reading Perl Programming Tutorial :D \041";
print "String 7: ".$scalar_string7."\n";

# add "@" ASCII character in hexadecimal form @=40
$scalar_string8="All mail about \uperl to benefit\x40\lL\LINUXCONFIG.ORG\E";
print "String 8: ".$scalar_string8."\n";
