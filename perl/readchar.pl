#!/usr/bin/perl
# Determine the number of characters in a file (readchar.pl)
# 2013-09-26

open(FILEHANDLE, $ARGV[0]) or die ("Given File Cannot Be Opened");
my $input =0;
while (defined($char = getc FILEHANDLE)) {
$input++;
}
print "Number of Chars: " . $input . "\n";
close FILEHANDLE; 
