#!/usr/bin/perl

open(INTS, './num.txt');
@INTS = <INTS>;
print @INTS;

$sum = 0;

foreach $int(@INTS){
    $sum += $int;
}

print $sum;
