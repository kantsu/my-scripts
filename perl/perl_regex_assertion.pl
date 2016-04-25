#!/usr/bin/perl
# Assertion (perl_regex_assertion.pl)
# 2013-09-25 -Samuli-

foreach(@ARGV) {
# Substitute character "a" and the end of the string with "$"
	s/a$/\$/g;
# Substitute character "a" and the beginning of the string with "^"
	s/^a/\^/g;
	print;
}

print "\n";
