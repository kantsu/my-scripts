#!/usr/bin/perl
# Push and Pop Arrays (pop_and_push_array.pl)
# 2013-09-25

# Create an array
@perl_array = (1 .. 3);

# Push new element to the end of an array
push(@perl_array, "\n");

# Print array
print @perl_array;

# Pop last element out from the array
$perl_scalar = pop(@perl_array);
print @perl_array;

# Print new line!
print $perl_scalar;
