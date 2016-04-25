#!/usr/bin/perl
# Scalar Constant Variable (perl_constant.pl)
# 2013-09-25
#--------------------------------------------

$ordinary_scalar = 5;
$ordinary_scalar = 10;

# Print that mess
print $ordinary_scalar."\n";

# Perl Constant Declaration!
*SCALAR_CONSTANT = 5;
$SCALAR_CONSTANT = 10;
