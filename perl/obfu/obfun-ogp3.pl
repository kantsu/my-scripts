#!/usr/bin/perl -w
use strict;
my $count=0;
my $text='';
while (<>) {
    last if /^__DATA__/;
    chomp;
    $text .= $_;
}
$text =~ s/\n/ /g;
my @sorted = sort {$a->[1] cmp $b->[1]} map{[$count++,$_]}
    $text =~ /(.{20})/gs;

my $index = join "", map {sprintf"%.2x",$_->[0]} @sorted;
print substr($index,0,56),"\n";   
print substr($index,56),"\n";
$count =0;
for (@sorted) {
    print $_->[1];
    if ($count++ > 1) {
        $count = 0;
        print "\n";
    }
}
print "\n";
