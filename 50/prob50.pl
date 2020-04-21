#!/usr/bin/perl

use Math::Prime::Util next_prime;

$n=0;
$sum = 0;

while(1){

        $n = next_prime($n);
        $sum += $n;   
        print "$n  == $sum\n";
        if ($sum > 1000){
            $sum -= $n;
            print "$sum\n";
            exit;
        }
}
