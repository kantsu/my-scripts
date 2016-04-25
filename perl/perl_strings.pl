#!/usr/bin/perl
# Scalar String Operators (perl_strings.pl)
# 2013-09-25 10:00am (benefit@kantsu.fi)

$scalar_string1="pe"."rl";
print "String 1: ".$scalar_string1."\n";
$scalar_string2="Perl Programming Tutorial " x (1+1);
print "String 2: ".$scalar_string2."\n";
$scalar_string3="3"."\ttabs" x 3;
print "String 3: ".$scalar_string3."\n";
$scalar_string4="Perl\x20".'Programming '."Tutorial";
print "String 4: ".$scalar_string4."\n";
$scalar_string5=9x5;
print "String 5: ".$scalar_string5."\n";

