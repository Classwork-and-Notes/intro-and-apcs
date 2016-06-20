public class Fib{
    
    public static int[] compute(int n, int[] nums){
	nums[n] = nums[n - 1] + nums[n - 2];

	    //compute(n - 1, nums) + compute(n - 2, nums);
	return nums;
    }
    
    public static void main(String[] args){
	int[] i = new int[100];

	System.out.println(compute(1, i));
    }

}
