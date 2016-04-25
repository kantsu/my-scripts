#!/usr/bin/perl
# Delete Element from an Array (delete_elem_array.pl)
# 2013-09-25
# (q) benefit@kantsu

# Create an array
@perl_array = (1, 2, 3, 4);

# Check if the array element exists
if (exists($perl_array[2])) {
	delete $perl_array[2];
} else {
	print "Array element is missing!\n"
}
print @perl_array, "\n";
