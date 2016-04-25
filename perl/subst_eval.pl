#!/usr/bin/perl
# Substitution with evaluation (subst_eval.pl)
# 2013-09-25 by Benefit
# In case a string is to be substituted with the output of a function call
# - rather than static text we can use the evaluation modified (/e) which
# evaluates the right hand side as code, rather than a string.... cool eh?

my $text_eval = my $text_noeval = "Here is some texxxt\n";

# Print the text without evaluation
$text_noeval =~ s/(xx+)/'(x^'.length($1).')'/;
print "\n"."Text without evaluation: ".$text_noeval."\n";

# Print the text WITh evaluation
$text_eval =~ s/(xx+)/'(x^'.length($1).')'/e;
print "Text with evaluation: ".$text_eval."\n";
print "K U R W A \n";
