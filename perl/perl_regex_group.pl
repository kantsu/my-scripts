#!/usr/bin/perl
# Grouping (perl_regex_group.pl)
# 2013-09-26 _SAMULI_ ps. huomenta!
# # # # # ^_^ # # # # # # # # # # #

$a=$ARGV[0];

if ($a =~ /(.*)@(.*)\.(.*)/) {
	print "$1\n$2\n$3\n";
}
