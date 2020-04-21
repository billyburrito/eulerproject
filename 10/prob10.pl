#!/usr/bin/perl
use Math::Prime::Util next_prime;
$n=0;
$sum = 0;
do{    
    $sum += $n;
    $n = next_prime($n);
} while ($n < 2000000);
print "$sum\n";
