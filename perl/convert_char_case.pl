#!/usr/bin/perl
# Translation (convert_char_case.pl)
# 2013-09-25 Samuli

$string="uSe ReGuLAr EXpReSsion to Upper CaSE to Lower CaSe CharacterS";

# Use Perl to convert string characters from upper case to lower case
$string =~ tr/A-Z/a-z/;
print "$string\n";

# Use Perl to convert string characters from lower case to upper case
$string =~ tr/a-z/A-Z/;
print "$string\n";
