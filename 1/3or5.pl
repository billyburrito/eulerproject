#!/usr/bin/perl

$base = 999;
$sum = 0;

while($base){
	if  (!(($base %3)&&($base %5))){
		print "$base\n";
		$sum += $base;
	}
	$base--;
}

print "answer is $sum\n";

