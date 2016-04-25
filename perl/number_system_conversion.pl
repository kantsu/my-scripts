#!/usr/bin/perl
# Perl Octal, Hexadecimal & Decimal Conversions (number_system_conversion.pl)
# 2013-09-26, Samuli Reinikainen
 
print "\n";

#perl  bin to dec
#PERL CONVERSION FROM BINARY TO DECIMAL
$decimal_number = 0b10010110;
print "Binary number 10010110 is " . $decimal_number . " in decimal.\n";

#perl  dec to bin
#PERL CONVERSION FROM DECIMAL TO BINARY
$decimal_number = 23451;
$binary_number = unpack("B32", pack("N", $decimal_number));
print "Decimal number " . $decimal_number . " is " . $binary_number .
" in binary.\n\n";

#perl  oct to dec
#PERL CONVERSION FROM OCTAL TO DECIMAL
$octal_number = 224;
$decimal_number =  oct($octal_number);
print "Octal number " . $octal_number . " is " . $decimal_number . "
in decimal.\n";
#perl  dec to oct
#PERL CONVERSION FROM DECIMAL TO OCTAL
$decimal_number = 8;
$octal_number = sprintf("%o",$decimal_number);
print "Decimal number " . $decimal_number . " is " . $octal_number . "
in octal.\n\n";

#perl  hex to dec
#PERL CONVERSION FROM HEXADECIMAL TO DECIMAL
$hexadecimal_number = "F1";
$decimal_number =  hex($hexadecimal_number);
print "Hexadecimal number " . $hexadecimal_number . " is " .
$decimal_number . " in decimal.\n";
 
#perl  dec to hex
#PERL CONVERSION FROM DECIMAL TO HEXADECIMAL
$decimal_number= 333;
$hexadecimal_number = sprintf("%x", $decimal_number);
print "Decimal number " . $decimal_number . " is " .
$hexadecimal_number . " in hexadecimal.\n\n"; 
