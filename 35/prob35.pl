#!/usr/bin/perl

use Math::Prime::Util is_prime;

$circ_count=0;

for ( $n =0; $n< 1000000; $n++){
    if (is_prime($n)) { 
        $count = 0;
        for ($i = length($n); $i > 0; $i--){
           $n =~ s/^(\d)(.*)/$2$1/;
           if (is_prime($n)) { 
               $count++;
           }
           if ($i == 1){
            if($count == (length($n))){
                $circ_count++;
            }
           }
        }
    }
}
print "$circ_count circular primes found\n";
