#!/usr/bin/perl
# Arrow operator (arrow_operator.pl)
# 2013-09-26 ^_Samuli_^

$perl_hash{browser} = iceweasel;
$perl_hash_reference= \%perl_hash;
print $perl_hash_reference->{browser} . "\n";
