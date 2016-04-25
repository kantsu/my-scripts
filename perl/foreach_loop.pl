#!/usr/bin/perl
# Perl foreach loop (foreach_loop.pl)
# 2013-09-26 d[b_d]b

#Declare array

@foreach_loop = (" Tutoriaali\n" , " Ohjelmointid" , "Perl" ) ;
foreach $count (reverse @foreach_loop) {
	print $count;
}
