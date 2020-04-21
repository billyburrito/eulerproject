#!/usr/bin/perl

for ($n = 2; $n < 1000000; $n++){
    @digits = split(//, $n);
    $sum = 0;
    foreach $num (@digits){
        $sum += $num ** 5;
    }
    if ($sum == $n){
        print "$n is good\n";
        $totalsum += $n;
    }
}
print "$totalsum\n";
