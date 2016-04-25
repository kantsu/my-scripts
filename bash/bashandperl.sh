#!/bin/bash
# bashandperl.sh: Combine Bash and Perl
# 2013-11-25
echo "Greetings from the Bash part of the script, $0."
# More Bash commands may follow here...

exit
# End of Bash part of the script.

#--------------------------------------------#

#!/usr/bin/perl
# This part of the script must be invoked with:
# perl -x bashandperl.sh

print "Greetings from the Perl part of the script. $0. \n"
# More Perl commands may follow here...

# End of Perl part of the script.
