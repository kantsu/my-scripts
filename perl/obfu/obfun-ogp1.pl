#!/usr/bin/perl -w
use strict;
my $file = shift;
my $minlen = shift || 3;
my @picture = (
    '  +--+',
    '     |', 
    '     |',
    '     |',
    '     |', 
    '-----+');
my @cp =( # create picture
    [1,2,'O'],  [2,2,'|'], [2,1,'/'],
    [2,3,'\\'], [3,1,'/'], [3,3,'\\']);
my @wcp=( # winner create picture
    [2,1,'\\'], [2,2,'O'], [2,3,'/'],
    [3,2,'|'],  [4,1,'/'], [4,3,'\\']);
my ($errors, $word, $guess, $msg, $A) = (0,'','','','a');
my %letters = ();
my %wordletters=();
my %garbled=map{$_,$A++}
    split //,'ifcseujmtaqybnzdwgvokxphlr'; 
{
    local $/=undef;
    my $words ;
    if (defined $file) {
        open FILE, "< $file" 
            or die "file not found $file\n";
        $words = <FILE>;
        close FILE;
    }
    else {
        $words = <DATA>;
    }
    srand();
    $words =~ s/\n/ /g;
    my @ww = grep {length($_) >= $minlen} split / /, $words;
    my $count = scalar @ww;
    $word = lc($ww[rand ($count) -1]);
    $word = join '',map{$garbled{$_}}split //,$word unless $file;
    $guess = '-' x length($word);
    $count =0;
    for (split //,$word){push @{$wordletters{$_}},$count++};
}

while (1) { # loops forever. Ends if win or lost
    draw($errors);
    if ($errors > 5) {
        print "YOU LOST ($word)\n";
        exit
    }
    print $guess,"\n";
    print 'used: <', keys %letters,">\n";
    print "guess: ";
    my $x; chomp($x = <>);
    $x = lc($1) if $x=~/(\w)/;
    if ($x !~ /^\w$/) {
        $msg = "INVALID INPUT $x";
    }
    elsif ($letters{$x}) {
        $msg = "ALREADY PLAYED: $x";
    }
    elsif ($wordletters{$x}) {
        for (@{ $wordletters{$x}} ) { 
            substr($guess, $_,1) = $x;
        }
        unless ($guess =~ /-/) {
            @cp=@wcp;
            $msg = "YOU WON! ($guess)";            
            draw(6);
            exit;
        }
    }
    else {
        $errors++
    }
    $letters{$x}++;    
}

sub draw {
   my $level = shift;
   my @pic = @picture;
   for my $j  (1..$level) {
       substr($pic[$cp[$j-1][0]],$cp[$j-1][1],1) 
           = $cp[$j-1][2];
   }
   system ('clear') if $^O =~ /linux/;
   # add the following if you like it
   # system ('cls') if lc($^O) =~ /win/; 
   print join $/,@pic,$/;
   if ($msg) {
       print "$msg$/";
       $msg ="";
   }
}
    
# DATA contains the same words as in obfun.pl
# from the 22nd line onwards
__DATA__
