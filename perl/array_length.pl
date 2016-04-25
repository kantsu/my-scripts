#!/usr/bin/perl
# Determine The Lenght of an Array (array_length.pl)
# 2013-09-25

# Create an array
@perl_array = (1 .. 3);
$number_of_elements = @perl_array;

# Print!
print "\@perl_array has: " . $number_of_elements . " elements.\n";
print "\@perl_array has: " . scalar(@perl_array) . " elements.\n";

