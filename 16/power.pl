#!/usr/bin/perl
use bignum;

$power = 1000;

$num = 2**$power;

@array = split(//, $num);


$answer = 0;
foreach $int (@array){
	$answer += $int;
}
 
print $answer;
