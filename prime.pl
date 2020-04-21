#!/usr/bin/perl
use bignum;
use Math::Prime::XS qw(primes is_prime);

$max = 2000000;
$answer = 0;
foreach $int(1..$max){
	if (is_prime($int)){
		$answer += $int;
	}
}

print "$answer\n";

