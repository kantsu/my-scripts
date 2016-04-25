#!/usr/bin/perl
# Regular Expression Extention
# 2013-09-25 -samuli-
#-------------------------------------------------------#
# (?=) 	Matches if would match next			#
# (?!) 	Matches if would NOT match next			#
# (?<=)	Matches if would match just before		#
# (?#)	= Comment					#
#-------------------------------------------------------#
 
$_="We want you to improve your Perl Regular Expressions skills.";
# Replace space with "#" if it is followed by "to"
s/\s(?=to)/#/g;
print "$_\n";
# Replace space with "_" if it is NOT followed by "s"
s/\s(?!s)/_/g;
print "$_\n";
