#!/usr/bin/perl

open(INPUT, "./1000digits.txt");
$raw = <INPUT>;
close INPUT;

@digit = split(//, $raw);

$highest = 0;

for ($i=0; $i < 987; $i++) {
    $calc = 1;
    for ($j=0; $j < 13; $j++){
        $calc *= $digit[$i+$j];
    }
    if ($calc > $highest){
            $highest = $calc;
    }
}

print "$highest\n";
