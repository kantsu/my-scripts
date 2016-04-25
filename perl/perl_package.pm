# DECLARE PERL PACKAGE
# 2013-09-26 <<Samuli>>
package perl_package;

BEGIN {
# INITIALIZATION CODE
}

# DEFINE PERL PACKAGE
sub package_subroutine {
print "Terve Moikka, Perl Paketti Hoikka.\n";
}
# TO INDICATE THAT PACKAGE LOADS OK
return 1;

END {
# CLEAN UP CODE
}  
