#!/usr/bin/perl
# defined.pl
# 2013-09-24

# Declare perl scalar do but not define value
$perl_scalar;
# We can use conditional operator '?:' to test perl defined function
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!"
 : "Variable \$perl_scalar in NOT Defined!";
print $variable."\n";
# Declare perl scalar with value
$perl_scalar="perl";
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!"
 : "Variable \$perl_scalar is NOT Defined!";
print $variable."\n";
