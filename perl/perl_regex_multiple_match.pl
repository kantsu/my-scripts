#!/usr/bin/perl
# Multiple Match (perl_regex_multiple_match.pl)
# 2013-09-25 -samuli-
# /g match globally
$text="We want to improve your Perl Regular Expressions skills.";
print "Number of Substitutions made: " . ($text =~ s/e/E/);
print "\n$text\n";

$text="We want to improve your Perl Regular Expressions skills.";
print "Number of Substitions made: " . ($text =~s/e/E/g);
print "\n$text\n";

