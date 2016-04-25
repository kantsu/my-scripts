#!/usr/bin/perl
# Precedence of Perl operators (precedence.pl)
# 2013-09-26

print 1 + 2 * 3 + 4 . "\n";
print ((1 + 2) * (3 + 4));
print "\n";
# Print as function or operator
print ((5 + 5) * 5); print "\n";
print (5 + 5 ) * 5; print "\n";
# Use unary + operator to tell Perl that we are not making print() function call.
# But rather.. we are using parentheses as a precedence.
print +(5 + 5 ) * 5; print "\n";
