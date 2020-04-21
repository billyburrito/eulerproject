#!/usr/bin/perl
use bignum;
$num = 2**1000;
while($num){    
    $sum+= chop($num);
}
print "$sum\n";
