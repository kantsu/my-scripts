#!/usr/bin/perl
# Merge and Append Arrays (merge_arrays.pl)
# 2013-09-25
# Samuli se vaan jaksaa vääntää Perliä vuonna 2013 :D

# Create an array
@perl_array1 = (".\n", "easy", "very ");
@perl_array2 = ("is ", "Programming ", "Perl ");
@perl_array3 = (@perl_array1, @perl_array2);

# Reversing the elements, thus printing out the ULTIMATE TRUTH!!!!!
print reverse @perl_array3;
