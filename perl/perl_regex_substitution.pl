#!/usr/bin/perl
# Substitution (perl_regex_substitution.pl)
# 2013-09-25

open (FILEHANDLE, $ARGV[0]) || die "Probulems detectekked";

@file=;

foreach(@file) {
# Substitute "#" with "$" and work globally for each instance found
# NOTE: all metachars needs to be escaped with "\" !! 
# Meta characters are: \ | {  [ ( ) ^ $ * + ? .
	s/\#/\$/g;
# Substitute upper case "E" with lower case "e"
	s/E/e/;
# Substitute first match of " " with "_"
	s/\s/\_/;
# Substitute first match of " " with "\"
# NOTE: It is your choice which substitute form you use s/// or s|||
	s|\s|\\|;
	print;
}
