#!/usr/bin/perl
# Pass & Return values (pass_return_values.pl)
# 2013-09-26 .. Samuli ^_^

sub perl_addition {
# All variable passed to the perl subroutines are stored in special @_ variable
	($number1, $number2) = @_;
# Return the result
return $number1 + $number2;
}
# Print result by calling perl_addition() subroutine
print "Number1 + Number2 = " . perl_addition(4, 2) . "\n";
