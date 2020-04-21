#!/usr/bin/perl

sub main {

$answer = 0;

&fibonacci(100);

print "answer is $answer";

exit 0;
}

# Except for the first line declaring the subroutine, and the different way that
# parameters passed to the subroutine are passed, this is identical to the PHP version

sub fibonacci {
  $a = 0;
  $b = 1;

  # So now we see the parameter being used here. For clarity, I have written the for
  # loop using $n like the other examples. To set $n using the first parameter passed
  # to the subroutine, I access the scalar variable $_[0], which is the first element
  # of the parameter array @_

  $n = $_[0];

  for ($i=0;$i<$n;$i++){
    #printf "%d\n", $a;
	if ($a < 4000000){
		if($a % 2 ==0){
			$answer += $a;
    		print "$a\n";
		}
	}
    $sum = $a + $b;
    $a = $b;
    $b = $sum;
  }
}

&main;

