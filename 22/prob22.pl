#!/usr/bin/perl

open (NAMES, "./names.txt");
$raw = <NAMES>;
close NAMES;

$raw =~ s/"//g;
@names = sort(split(/,/, $raw));

$count = 1;
$sum = 0;

foreach $entry(@names){
    $total = 0;
    @break = split(//,$entry);
    foreach $char(@break){
        $total += (ord($char) - 64);
    }
    $sum += $total * $count;
    $count++;
}
print "$sum\n";
