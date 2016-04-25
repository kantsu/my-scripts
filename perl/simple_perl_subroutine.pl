#/usr/bin/perl
# Create Simple Perl Subroutine (simple_perl_subroutine.pl)
# 2013-09-26 ^Samuli^
# Lets create subroutine which we can use to check for presence of number
#+ in the string. Name of the subroutine is numbers_in_string

sub numbers_in_string
{
	if ($mystring =~ /[0-9]/) {
		print "Supplied string contains numbers, you rascal!\n";
	} else {
		print "Supplied string does NOT contain numbers, thank you!\n";
	}
}

# Declare global scope variable which means that this variable can be accessed
#+ from anywhere in this code!	7:29am btw... school time soon :)
$mystring="number one";
# Perl Subroutine calls
numbers_in_string;
$mystring="number 1";
# Perl Subroutine calls
numbers_in_string;
numbers_in_string($mystring);
