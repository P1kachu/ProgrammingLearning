//
//  Correction_Rust.rs
//  RustCorrection
//
//  Created by Tandrial on 03/10/15.
//  Copyright (c) 2015 Tandrial. All rights reserved.

// It's not possible to compile this with  ´rustc Correction_Rust.rs´ since we depends on the rand crate
// Instead use cargo ´cargo new CorrectionRust --bin´, add  rand as a dependency (in Cargo.toml) 
// and then run it ´cargo run´
extern crate rand;

use std::io;   // User input
use rand::Rng; // rnd
use std::collections::LinkedList;

fn main() {
	//Part One:


	//FIXME: Declare variables
	//Declare two variables: an integer named "age", and a string named "name" 
	//with corresponding values (your name and age)
	let age: i32 = 20;
	let name: &str = "Michael";

	//FIXME: Print
	//Print the following sentence in the console "You are NAME and you are AGE years old !".
	// Don't forget to add a newline at the end
	println!("You are {} and you are {} years old!", name, age);

	//FiXME: Concatenation
	//Create a new string variable called "hello" which value is "Hello ". 
	//Add "name" at the end of "hello" (Concatenation) then print it
	let mut hello = "Hello ".to_string();
	hello = hello + name;
	println!("{}", hello);

	//FIXME: Array
	//create a new string array called "shoppingList", with three elements of your choice.
	//Create an int variable containing the number of
	//elements in "shoppingList" (using a function of the array/using the array)
	let shopping_list: [&str; 3] = ["Apples", "Pears", "Milk"];
	let size_shopping_list = shopping_list.len();

	//FIXME: For-loop - Integer
	//Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
	for i in 1..11 {
		println!("{}", i);
	}

	//FIXME: For-loop - shoppingList
	//Create a for loop that iterate through "shoppingList" and prints each element.
	for i in 0..size_shopping_list {
		println!("{}", shopping_list[i]);
	}

	//FIXME: Foreach-loop
	//Do the same with a foreach-loop.
	for item in &shopping_list {
		println!("{}", item);
	}

	//FIXME: If-statement
	//Modify the first for-loop (with i from 1 to 10) such that it prints 
	// "(value of i) is even" when "i" is divisible by 2 (You may want to learn more about "modulo" (%)).
	// Else, print "(value of i) is odd".
	for i in 1..11 {
		match i % 2 {
			0 => println!("{} is even!", i),
			_ => println!("{} is odd!" , i),
		};	
	}

	//FIXME: Sum Up
	//Create a string variable called "element" with the value of your choice. 
	//Then create a for-loop that checks if "shoppingList" contains 
	//"element". If yes, print "You have to buy (value of element) !", 
	// and stop the loop (search how to stop a loop).
	//If not, print "Nope, you don't need (value of "element")".
	let item: &str = "Chocolate";
	let mut found: bool = false;

	for &elem in shopping_list.iter() {		
		if elem == item {
			found = true;
			break;
		}
	}
	if found {
		println!("You have to buy {} !", item);
	} else {
		println!("Nope, you don't need {}", item);
	}

	//Part Two:


	//FIXME: Functions - Ascii
	//Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
	//and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
	//Don't forget to call the function !
	tri_force();

	//FIXME: Functions - One parameter
	//Create a function that takes a string as parameter and returns "Hello (value of string) !"
	hello_string(name);

	//FIXME: Functions - Multiple parameters
	//Create a function that takes two integers as parameters and returns the addition of these two.
	//You can do the same with multiplication, subtraction and division.
	println!("1 + 2 = {}", add(1, 2));
	println!("2 * 3 = {}", mult(2, 3));	
	println!("1 - 2 = {}", sub(1, 2));
	println!("8 / 2 = {}", div(8, 2));

	//FIXME: User entry
	//Create a string variable that takes what the user enter in the console as value. 
	//Then print "You entered (value of string)"	
	let mut input = String::new();
	io::stdin().read_line(&mut input)
				   	 .ok()
				     .expect("Failed to read line");

	println!("You entered {}", input);

	//FIXME: While loop
	//Create a while loop that takes a number and divides it by 2 until it is less than 3
	let mut num: i32 = 1337;
	println!("{}", num);
	while num >= 3 {
		num /= 2;
		println!("{}", num);
	}

	//FIXME: do-While loop
	//Do the same with a do-while loop

	//FIXME: Random generator
	//Create a function that returns a random number
	println!("{}", get_random());

	//FIXME: Random generator with bounds
	//Create another function that returns a random number between two bounds given as parameters.
	println!("{}", get_random_in_range(1, 100));

	//FIXME: Multidimensional array
	//Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
	//between 1 and 9 in each of the 9 rooms.
	//You may use one of the two previously created function.
	//Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
	//{x1,x2,x3,}
	//{x4,x5,x6,}
	//{x7,x8,x9,}
	let mut arr = [[0i32; 3]; 3];
	for i in 0..3 {
		for j in 0..3 {
			arr[i][j] = get_random_in_range(1,9);
		}
	}

	for ele in arr.iter() {
		print!("{{", );
		for e in ele.iter() {
			print!("{},", e);
		}
		println!("}}");
	}

	//FIXME: Switch
	//Create a Switch that takes an integer "a" and return a sentence regarding the value of a
	//(Create 3 statements for 3 specific values and a default one)
	let x: i32 = 1332;
	println!("{}", match x {
			41 => "Almost the meaning of life!",
			42 => "The meaning of life!",
			1337 => "Mess with the best",
			_ => "die like the rest!"
		});

	//FIXME: logic Gates
	//Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
	//Each function takes two booleans as parameters and returns the result of the logic gate.
	//(or You can do it with a switch and only one function)
	println!("T && T = {}", logic("And", true, true));
	println!("T ^  T = {}", logic("Xor", true, true));
	println!("T || T = {}", logic("Or", true, true));
	println!("!T     = {}", logic("No", true, true));

	//FIXME - Reverse
	//Create a function that reverse a string
	let s = "abcd"; // Unicode characters in my string
	let s_rev: String = s.chars().rev().collect();	
	println!("{}", s_rev);

	adv_questions();
}

fn tri_force() {
	println!("   ▲");
  println!("  ▲ ▲");
  println!("TRIFORCE");
}

fn hello_string(s: &str) {
	println!("Hello {}!", s);	
}

fn add(a: i32, b: i32) -> i32 {
	a + b
}

fn sub(a: i32, b: i32) -> i32 {
	a - b
}

fn mult(a: i32, b: i32) -> i32 {
	a * b
}

fn div(a: i32, b: i32) -> i32 {
	a / b
}

fn get_random() -> i32 {
	rand::random::<i32>()
}

fn get_random_in_range(low: i32, upper: i32) -> i32 {
	rand::thread_rng().gen_range(low, upper +1)
}

fn logic(gate: &str, a: bool, b: bool) -> bool {
	match gate {
		"And"  =>	a && b,
		"Or"   =>	a || b,
		"No"   =>	!a,
		"Nand" =>	!(a && b),
		"Nor"  =>	!(a || b),
		"Xnor" =>	!(a ^ b),
		"Xor"  =>	a ^ b,
		_ => panic!("Unknowen op : {}", gate)
	}
}

fn adv_questions() {
	// -------------------------------------------------------------------------------------------------------------
	// Advance Question:
	// These are question from actual interview with large companies.

	// Microsoft Interview Question: 
	// Write a Function to Reverse the word order of String 
	// Sample: "This is a Cat" -> "Cat a is This" 
	let s: &str = "This is a cat";	
	let mut s_rev: String = String::new();
	for word in s.split_whitespace().rev() {
		s_rev = s_rev + &word + " ";	
	}	
	println!("'{}'", s_rev.trim_right());

	// Facebook Interview Question:
	// Write a Function which proves if a String is a Palindrome 
	// Note: Word which is read the same Backward as Forward
	let s = "tacocat";
	let s_rev: String = s.chars().rev().collect();	
	if s == s_rev {
		println!("{} is a palindrome!", s);
	}

	// Facebook Interview Question:
	// Given a List of Arrays, write a Function which will  
	// Return True if Two of the Number equal 12 
	let mut list: LinkedList<Box<[i32]>> = LinkedList::new();
	list.push_back(Box::new([3, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2]));
	list.push_back(Box::new([3, 9, 29, 2]));
	list.push_back(Box::new([15, -3, 2]));
	list.push_back(Box::new([11, 2, 2, 2, 1, 2]));
	list.push_back(Box::new([10, 3]));
	for elem in list {
		if adds_up_to_12(&elem) {
			println!("{:?} has two numbers that add up to 12!", elem);
		} else {
			println!("{:?} doesn't have two numbers that add up to 12!", elem);
		}
	}

	// Microsoft Interview Question: 
	// With a given Array  (Multidimensional Array) find location 
	// Zero & Replaces all Columns & Rows with Zero 
	// Sample:  
	// Input:{  1,  2,  3,  4 } 
	//    	 {  5,  6,  7,  8 } 
	//       {  9, 10,  0, 11 } 
	//       { 12, 13, 14, 15 } 

	// Output: {  1,  2,  0,  4 } 
	//         {  5,  6,  0,  8 } 
	//         {  0,  0,  0,  0 } 
	//         { 12, 13,  0, 15 } 

	let mut array = [[1,   2,  3,  4],
	                 [5,   6,  7,  8],
	                 [9,  10,  0, 11],
	                 [12, 13, 14, 15]];
	for i in 0.. array.len() {
		println!("{:?}", array[i]);	
	}	
	find_replace_0(&mut array);
	for i in 0.. array.len() {
		println!("{:?}", array[i]);	
	}

	// HackerRank Data Structure & Algorithm Questions 
	// You are given an array of integers of size N . You need to print  
	// the sum of the elements of the array.  

	let nums: [i32; 5] = [1, 2, 3, 4, 5];
	let sum: i32 = nums.iter().fold(0, |acc, x| acc + x);
	println!("sum = {}", sum);

	// HackerRank Data Structure & Algorithm Questions: 
	// Your teacher has given you the task to draw the structure of a staircase.  
	// Being an expert programmer, you decided to make a program for the same.  
	// You are given the height of the staircase. You need to print a  
	// staircase as shown in the example.  
	// Output:  
	//       # 
	//      ## 
	//     ### 
	//    #### 
	//   ##### 
	//  ###### 
	print_stairs(6);

	// FIXME: Classes
	// Build a simnple Console Notebook application which can record Notes,
	// take Tags, modify list (sort by alphabetical...) and other sort of features

	// no classes in rust
}

fn adds_up_to_12(arr: &[i32]) -> bool {
	for i in 0..arr.len() - 1 {
		for j in i + 1 .. arr.len() {
			if arr[i] + arr[j] == 12 {
				return true
			}
		}
	}
	false
}

fn find_replace_0(arr: &mut [[i32]]) {
	let mut x: usize = 0;
	let mut y: usize = 0;
	for i in 0..arr.len() {
		for j in 0..arr[i].len() {
			if arr[i][j] == 0 {
				x = i;
				y = j;
			}
		}
	}
	for i in 0..arr.len() {
		arr[i][y] = 0;
		arr[x][i] = 0;
	}	
}

fn print_stairs(h: usize) {	
	let mut white_spaces = String::from_utf8(vec![32; h]).unwrap();
	let mut stairs = String::new();

	for _ in 0..h {
		stairs = stairs + "#";		
		println!("{}{}", white_spaces ,stairs);
		white_spaces = white_spaces[1..].to_string();		
	}	
}
