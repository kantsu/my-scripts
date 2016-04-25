#!/usr/bin/perl
# String & Numeric Comparison Operators (comparison.pl)
# 2013-09-25 
# (q) Benefit
#------------------------------------------------------
#				String	Numeric
# Equal				eq	==
# Not equal			ne	!=
# Less than			lt	<
# Greater than			gt	>
# Less than or equal		le	<=
# Greater than or equal		ge	>=
#------------------------------------------------------

# String Comparison
if ( 'Perl' eq 'perl' ) {
	print "TRUE\n";
} else {
	print "FALSE\n";
}

# Numeric Comparison
if ( '2.4' != '2.6' ) {
	print "TRUE\n";
} else {
	print "FALSE\n";
}
