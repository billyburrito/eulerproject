#!/usr/bin/perl

%triangles;
%letters;
$wordcount = 0;

foreach my $n (1..100000) {
	$x=.5*$n*($n+1);
	$triangles{$x} = 1;	
}

$charint = 1;
foreach $char(A..Z){
	$letters{$char} = $charint;
	$charint++;
}
	


open(WORDS, "./words.txt");
$words = <WORDS>;
close WORDS;

@words = split(/,/, $words);
foreach $entry(@words){
	$entry =~ s/\"//g;
	@text = split (//, $entry);

	$lettersum = 0;
	foreach $letter(split //, $entry){
		$lettersum += $letters{$letter};
	}

	if($triangles{$lettersum}){
		print "$lettersum\n";
		
		$wordcount++;
	}

}

print "$wordcount\n";
