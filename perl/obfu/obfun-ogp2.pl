@pc=qw(2+--+ 5| 5| 5| 5| -----+);
s/(\d)/" " x $1/e for@pc;
(@cp,@wcp)=((),());
$_="12O22|21/23\\31/33\\";
push@cp,[$1,$2,$3]while /(.)(.)(.)/g;
$_="21\\22O23/32|41/43\\";
push@wcp,[$1,$2,$3]while /(.)(.)(.)/g;
($er,$wd,$gs,$msg,$A,%ls,%wl)=(0,"","","","a");
@xmg=("ZPV MPTU","vtfe:","hvftt: ","JOWBMJE JOQVU ",
"BMSFBEZ QMBZFE:","ZPV XPO!");
%grbl=map{$_,$A++}split //,"ifcseujmtaqybnzdwgvokxphlr";
{
local$/=undef;
$_=<DATA>
}
srand();
s/\n/ /g;
@ww=split / /,$_;
$c=@ww;
$wd=lc($ww[rand($c)-1]);
$wd=join"",map{$grbl{$_}}split //,$wd;
$gs="-" x length($wd);
$c=0;
push@{$wl{$_}},$c++for split //,$wd;
@mg=map{tr/[b-z]/[a-y]/;tr/[B-Z]/[A-Y]/;$_}@xmg;
while(1){
dw($er);
if($er>5){print"$mg[0] ($wd)\n";exit}
print$gs,"\n$mg[1] <",keys %ls,">\n$mg[2]";
chomp($x=<>);
$x=lc($1)if$x=~/(\w)/;
if($x!~/^\w$/){$msg="$mg[3] $x"}
elsif($ls{$x}){$msg="$mg[4] $x"}
elsif($wl{$x})
{for(@{$wl{$x}}){substr($gs,$_,1)=$x}
unless($gs=~ /-/){@cp=@wcp;$msg="$mg[5] ($gs)";
dw(6);exit;}}
else{$er++}$ls{$x}++}
sub dw{
@p=@pc;
for(1..$_[0])

{substr($p[$cp[$_-1][0]],$cp[$_-1][1],1)=$cp[$_-1][2]}
system("clear")if $^O=~/linux/;
print join $/,@p,$/;
if($msg){print"$msg$/";$msg=""}}
__DATA__
