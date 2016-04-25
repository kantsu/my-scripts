#!/usr/bin/perl
# perl_scalars.pl
# 2013-04-24
# Scalars hold just single data type: string, number or perl reference
# Scalars definition in Perl

$scalar_number = -5;
$scalar_string1 = "In PERL Scalars are always referenced with \x24 in front of each variable name. ";
$scalar_string2 = "5 itams";

# Underscore can be use for big numbers lyk a millyon
$scalar_million = 1_000_000;

# Print scalar values
print $scalar_number."\n";
print $scalar_string1."\n";
print $scalar_string2."\n";
print $scalar_million."\n";

# PERL Scalar addition
print $scalar_number + $scalar_million."\n";
