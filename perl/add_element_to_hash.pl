#!/usr/bin/perl
# Add Element to a Hash (add_element_to_hash.pl)
# 2013-09-25
# (q) benefit@kantsu

# Create Hash
%perl_hash = (
	browser => iceweasel,
# you can also use comma instead of arrow operator :)
	os , linux, 
);

# Print Hash element
print "$perl_hash{'browser'}\n";

# Add elements to a Hash
%perl_hash = (%perl_hash, programming, perl);

# Print dem all elements!
print join (" ", %perl_hash). "\n";
