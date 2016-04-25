#!/usr/bin/perl
# Quantifiers (perl_regex_quantifiers.pl)
# 2013-09-25
# BENSQ @ 11:35am

@array1 = @ARGV;
@array2 = @ARGV;

print "\@array1 = ";
foreach(@array1) {
# Substitute at least 3 "s" characters!
	s/s{3,}/SS/g;	print;
}
print "\n\@array2 = ";
foreach(@array2) {
# Substitute one or more "s" characters!
	s/s+/S/g;	print;
}
# GIMME AN ENTER !
print "\n";
