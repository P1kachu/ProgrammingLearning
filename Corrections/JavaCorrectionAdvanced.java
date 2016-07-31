//
//  JavaCorrectionAdvanced.java
//  JavaCorrectionAdvanced
//
//  Created by PraveenKishore on 31/07/16.
//
//  Reviewed by:
//      - (null)
//

import java.lang.*;

class JavaCorrectionAdvanced
{
    public static void main(String args[])
    {
		// Microsoft Interview Question
		System.out.println(reverseWordOrder("This is a Cat"));
		System.out.println("");
		
		// Facebook Interview Question 1
		if(isPalindrome("Malayalam")) {
			System.out.println("Palindrome");
		} else {
			System.out.println("Not a palindrome");
		}
		System.out.println("");
		
		// Facebook Interview Question 2
		if(facebook2(new int[] { 1, 12, 11, 3, 4})) {	// Returns true if 2 or more numbers is 12
			System.out.println("Two or more numbers is 12");
		} else {
			System.out.println("Two or more numbers is not 12");
		}
		System.out.println("");
		
		// Microsoft Interview Question
		int a[][] = new int[][]{{  1,  2,  3,  4 }, 
								{  5,  6,  7,  8 }, 
								{  9, 10,  0, 11 }, 
								{ 12, 13, 14, 15 }};
		replaceWith0(a);
		System.out.println("");
		
		// HackerRank Data Structure & Algorithm Questions 
		// You are given an array of integers of size N . You need to print  
		// the sum of the elements of the array.  
		int sum = 0;
		int num[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		for(int i = 0; i < num.length; i++) {
			sum += num[i];
		}
		System.out.println("Sum: " + sum);
		System.out.println("");
		
		// HackerRank Data Structure & Algorithm Questions: 
		// Your teacher has given you the task to draw the structure of a staircase.  
		// Being an expert programmer, you decided to make a program for the same.  
		// You are given the height of the staircase. You need to print a  
		// staircase as shown in the example.  
		// Output:  
		//      # 
		//     ## 
		//    ### 
		//   #### 
		//  ##### 
		// ###### 
		int height = 6;
		int s = height-1, h = 1;	// s: For storing number of space to be printed next, h for storing number of '#' to be printed next
		for(int i = 0; i < height; i++) {
			for(int j = 0; j < s; j++) {
				System.out.print(" ");
			}
			for(int k = 0; k < h; k++) {
				System.out.print("#");
			}
			s--;
			h++;
			System.out.println("");
		}
	}
	
	static String reverseWordOrder(String input) {
		/** Microsoft Interview Question: 
		* Write a Function to Reverse the word order of String 
		* Sample: "This is a Cat" -> "Cat a is This"
		**/
		String output = "";
		String words[] = input.split(" ");	// Split the sentence into words
		for(int i = words.length - 1; i >= 0; i--) {
			output = output + words[i] + " ";
		}
		return output;
	}
	
	static boolean isPalindrome(String input) {
		/** Facebook Interview Question:
		* Write a Function which proves if a String is a Palindrome 
		* Note: Word which is read the same Backward as Forward 
		**/
		String reverse = new StringBuilder(input).reverse().toString();
		if(reverse.equalsIgnoreCase(input)) {
			return true;
		} else {
			return false;
		}
	}
	
	static boolean facebook2(int a[]) {
		/** Facebook Interview Question:
		* Given a List of Arrays, write a Function which will  
		* Return True if Two of the Number equal 12 
		*/
		int count  = 0;
		for(int i = 0; i < a.length; i++) {
			if(a[i] == 12) {
				count++;
			}
			if(count >= 2) {
				return true;
			}
		}
		return false;
	}
	
	static int[][] replaceWith0(int a[][]) {
		/** Microsoft Interview Question: 
		* With a given Array  (Multidimensional Array) find location 
		* Zero & Replaces all Columns & Rows with Zero 
		* Sample:  
		* Input:{  1,  2,  3,  4 } 
		*		{  5,  6,  7,  8 } 
		*		{  9, 10,  0, 11 } 
		*		{ 12, 13, 14, 15 } 
		*
		* Output: {  1,  2,  0,  4 } 
		*		{  5,  6,  0,  8 } 
		*		{  0,  0,  0,  0 } 
		*		{ 12, 13,  0, 15 } 
		**/
		
		int m = -1, n = -1;
		// Find the row and column index of 0
		for(int i = 0; i < a.length; i++) {
			for(int j = 0; j < a[0].length; j++) {
				if(a[i][j] == 0) {
					m = i;
					n = j;
					break;
				}
			}
		}
		
		// Replace rows and and columns of that index with 0
		if(m != -1 && n != -1) {
			for(int i = 0; i < a.length; i++) {
				for(int j = 0; j < a[0].length; j++) {
					if(i == m) {
						a[i][j] = 0;
					}
					if(j == n) {
						a[i][j] = 0;
					}
				}
			}
		}
		
		// Print the matrix
		System.out.println("Output: ");
		for(int i = 0; i < a.length; i++) {
			for(int j = 0; j < a[0].length; j++) {
					System.out.print(a[i][j] + "\t");
			}
			System.out.println("");
		}
		return a;
	}
}
