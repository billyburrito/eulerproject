#!/usr/bin/perl

open(INPUT, "./pyra1.txt");
#open(INPUT, "./pyraA.txt");
@input = <INPUT>;
close INPUT;

$seed = 0;
$answer = 0;

foreach $row(@input){
	@vals = split(/ /, $row);

	if($vals[$seed] > $vals[$seed + 1]){
		$answer += $vals[$seed];
		print "$vals[$seed]\n";
	} else {
		$answer += $vals[$seed + 1];
		print "$vals[$seed + 1]\n";
		$seed++;
	}

}


print "$answer\n";
