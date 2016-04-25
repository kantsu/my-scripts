#!/usr/bin/perl
# Classes (perl_regex_char_class.pl)
# 2013-09-25
# A regular expression surrounded in square brackets is called a
#+ character class which matches any single char described by the
#+ regular expression...

foreach(@ARGV) {
# Substitute all characters "except ^" upper case chars and char "e" with "#"
	s/[^A-Ze]/\#/g; print;
}
print "\n";
