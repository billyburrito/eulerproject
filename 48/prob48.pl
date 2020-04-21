#!/usr/bin/perl
use bignum;

$sum = 0;
for ($i = 1; $i < 1001; $i++) {
        $sum += ($i ** $i);
}
print "$sum\n";
