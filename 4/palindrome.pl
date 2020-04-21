#!/usr/bin/perl
$value= 0;
for ($i = 1; $i < 1000; $i++){
	for ($j = 1; $j < 1000; $j++){
		$value = $i * $j;
		if ($value == reverse $value){
			print "$value\n";
		}	
	}
}
