#!/usr/bin/perl
use Lingua::EN::Numbers qw(num2en num2en_ordinal);

foreach $num(1..1000){
	$string .= num2en($num);
}	
$string =~ s/-//g;
$string =~ s/\ //g;
print length($string) ."\n";
