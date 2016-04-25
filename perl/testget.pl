#!/usr/bin/perl
use strict;
use warnings;
use Person;

my $p = Person->new();

$p->varName('Samuli');
$p->varAge(25);

print $p->varName." is ".$p->varAge." years old.\n";
