#!/usr/bin/perl

use Math::Prime::Util next_prime;

$n=0;
$count =0;

while($count < 10001){
    
    $n = next_prime($n);
    $count++;
}
print "$n\n";
