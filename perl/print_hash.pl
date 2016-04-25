#!/usr/bin/perl
# Print Hash (print_hash.pl)
# 2013-09-25
# (q) benefit@kantsu

# Create Hash
%perl_hash = qw(
	ssh 22
	http 80
	https 443
	telnet 23
	postgres 5432
);

while (($hash_key, $hash_value) = each %perl_hash ){
	print "$hash_key uses port $hash_value\n";
}
