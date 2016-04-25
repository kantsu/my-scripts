#!/usr/bin/perl
# Sort Arrays (sort_arrays.pl)
# 2013-09-25
# (q) benefit@kantsu

# Create an array
@perl_array = (3, 4, 1, 2);
@sorted_array1 = sort @perl_array;
@sorted_array2 = sort {$b <=> $a} @perl_array;

# Print, print, print!!1
print "@sorted_array1 \n";
print "@sorted_array2 \n";
