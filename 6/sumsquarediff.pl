#!/usr/bin/perl
$indivSQ =0;
$total = 0;
$totalSQ =0;


for ($i=1; $i<101; $i++){
	$indivSQ += ($i * $i);
	$total += $i;
}	

$totalSQ = $total*$total;

print $totalSQ - $indivSQ . "\n";

