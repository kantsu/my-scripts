#!/usr/bin/perl
# Merging Hashes (merge_hash.pl)
# 2013-09-25
# (q) benefit@kantsu

# Create Hash
%perl_hash1 = qw(
	Debian deb
);
%perl_hash2 = qw(
	RedHat rpm
);

# Merge hashes
%perl_hash3 = (%perl_hash1, %perl_hash2);

while (($hash_key, $hash_value) = each %perl_hash3 ){
	print "$hash_key: $hash_value\n";
}
