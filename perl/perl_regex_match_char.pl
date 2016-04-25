#!/usr/bin/perl
# Perl Regular Expressions (thanks linuxconfig.org!)
# Match Characters (perl_regex_match_char.pl)
# 2013-09-25
#
#-----------------------------------------------#
# Regular Expressions and Special Characters 	#
#						#
#	\D = matches non-digit character	#
#	\e = escape				#
#	\l = next character lower case		#			
#	\S = match a non-white space char	#
#	\U = match upper case until \E found	#
#	\w = match word				#
#	\d = matches digit character		#
#	\f = form feed				#
#	\n = new line				#
#	\s = match a white space character	#
#	\u = next character uppercase		#
#	\Q = quote pattern metachar until \E	#
#	\E = end case modification		#
#	\L = matches lowercase until \E found	#
#	\r = return				#
#	\t = match tab				#
#	\W = match non-word			#
#-----------------------------------------------#

# 1) match lower case and uppercase char "p"
# 2) match lower case char "p" only
# 3) match two characters ex and ignore alphabetic case

# USAGE
# ./perl_regex_match_char.pl Perl Regular Expressions
# ^
foreach(@ARGV) {
if (m/p/i) {$p1++;}
if (m/p/) {$p2++;}
if (m/ex/i) {$ex++;} 
}
print "p1=$p1\np2=$p2\nex=$ex\n";
