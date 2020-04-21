
public class Pentagonal {

	public static void main(String[] args){
		System.out.println(pentagonalRecursive(5));
	}
	
	public static int pentagonalRecursive(int arg) {
        int sum = 0;
        // the arg == 0 case will fall through
        if (arg == 1) {
            sum += pentagonalRecursive(--arg);
            sum += 1;
        } else if (arg > 1) {
            sum += pentagonalRecursive(--arg);
            sum += (3*arg) + 1;
        }
        return sum;
	}

	
}
