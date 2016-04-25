while (<DATA>){
    chop;
    if($.< 3) { # read the index (first 2 lines)
        $ndx .= $_;
    }
    else { # or the code text
        $text .= $_;
    }
    last if $. > 20; # now DATA contains only the words
                     # that we need for the game
}
# rebuilds the index
@index = map {hex $_} $ndx =~ /(..)/g;

# gets the text, in chunks of 20 chars
@code = $text =~ /(.{20})/g;

$count=0;
@original = map {$$_[1]} # gets the second element of the
                         # sorted array
    sort{$$a[0] <=> $$b[0]}    # sorts by the index
    map{[$index[$count++],$_]} # creates the array
    @code;                     # from the garbled text

$_ = join '', @original; # now $_ has the working code
eval;
