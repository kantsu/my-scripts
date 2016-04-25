#!/usr/bin/perl
# Starting to learn arrays now, pretty neat! (create_array.pl)
# 2013-09-25

# Create an array
@perl_array1 = qw(Perl Programming Tutorial );
@perl_array2 = ("Perl ", "Programming ", "Tutorial", "\n");
@perl_array3 = (1 .. 3);
$perl_array4[0] = "Perl ";
$perl_array4[1] = "Programming ";
$perl_array4[2] = "Tutorial";
$perl_array4[50] = "\n";

# Add elements to an array
$perl_array1[3] = "\n";

# Print, print, print!
print @perl_array1;
print @perl_array2;
print @perl_array3;
print $perl_array1[3];
print @perl_array4;
# What index has a last element of an array?
print "Last element of perl_array4 has index: " . $#perl_array4 ."\n";
