#!/usr/bin/perl
use bignum;

$answer =0;
foreach $int(1..100){
	$answer += $int**$int;
}

print "$answer\n";
