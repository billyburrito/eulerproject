import java.math.BigInteger;


public class Prime {

    public static void main(String[] args){
    	// euler problem 1
        //System.out.println("threes and fives");
        //System.out.println(findThreeFiveSum(1));
    	
        //System.out.println("sum of primes");
        //System.out.println(sumOfPrimes(java.math.BigInteger.valueOf(1)));
    	
    	System.out.println("nth prime");
    	System.out.println(findNPrime(6));
    	System.out.println(findNPrime(10001));
    }

    static BigInteger bigint = BigInteger.valueOf(2000000);
    

//    public static BigInteger sumOfPrimes(BigInteger number){
//    	BigInteger answer = BigInteger.valueOf(0);
//    	
//    	if (number.compareTo(bigint) == -1){
//    		if (number.isProbablePrime(50)){
//    			answer.add(number);
//    		}
//    		
//    		number.add(BigInteger.valueOf(1));
////    		number.add(BigInteger.valueOf(1));
//    		answer.add(sumOfPrimes(number));
//    	}
//    	return answer;
//    }
    
    // euler problem 7
    // answer 104743
    public static int findNPrime(int n){
    	int count = 0;
    	int series = 1;

    	while(count < n){
    		series++;

    		if(isPrime(series)){
    			count++;
    		}
    	}
    	
//    	for(series = 0; count < n; ++series){
//    		if(isPrime(series)){
//    			count++;
//    			System.out.println(series + " is prime");
//    		}
//    	}
    	System.out.println(count + " count prime " + " " + series);
    	return series;
    }
    
    // euler problem 1
    public static int findThreeFiveSum(int number){
    	int answer = 0;
        int MAX = 1000;

        if (number < MAX) {
            if((number % 3 == 0) || (number % 5 == 0)){
                answer += number;
            }
            
            answer += findThreeFiveSum(++number);
        }

       return answer;

    }
    
	public static boolean isPrime(long n) {
		boolean prime = true;
		for (long i = 3; i <= Math.sqrt(n); i += 2)
			if (n % i == 0) {
				prime = false;
				break;
			}
		if (( n%2 !=0 && prime && n > 2) || n == 2) {
			return true;
		} else {
			return false;
		}
	}

    

}
