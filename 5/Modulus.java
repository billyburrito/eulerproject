
public class Modulus {

	public static void main(String[] args) {
		System.out.println(testModulus(1, 1000000000));
		
		
		
	}
	
	// problem 5
	// answer 232792560
	public static int testModulus(int start, int end){
		for(int i = start; i <= end; i++){
//			System.out.print("testing " + i + " ");
			int success = 0;
			for(int j = 1; j < 21; j++){
				if(i % j == 0){
					success++;
				}
				if (success == 20){
			System.out.println(i);
					return i;
				}
			}
		}
		return 0;
	}
	
}
