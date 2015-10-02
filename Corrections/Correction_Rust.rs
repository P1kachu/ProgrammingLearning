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

fn main() {
	// Part One:


	// FIXME: Declare variables
	// Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
	let age: i32 = 20;
	let name: &str = "Michael";

	// FIXME: Print
	// Print the following sentence in the console "You are NAME and you are AGE years old !".
	// Don't forget to add a newline at the end
	println!("You are {} and you are {} years old!", name, age);

	// FiXME: Concatenation
	// Create a new string variable called "hello" which value is "Hello ". 
	// Add "name" at the end of "hello" (Concatenation) then print it
	let mut hello = "Hello ".to_string();
	hello = hello + name;
	println!("{}", hello);

	//FIXME: Array
	// create a new string array called "shoppingList", with three elements of your choice.
	// Create an int variable containing the number of elements in "shoppingList" (using a function of the array/using the array)
	let shoppingList: [&str; 3] = ["Apples", "Pears", "Milk"];
	let sizeShoppingList = shoppingList.len();

	// FIXME: For-loop - Integer
	// Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
	for i in 1..11 {
		println!("{}", i);
	}

	// FIXME: For-loop - shoppingList
	// Create a for loop that iterate through "shoppingList" and prints each element.
	for i in 0..sizeShoppingList {
		println!("{}", shoppingList[i]);
	}

	// FIXME: Foreach-loop
	// Do the same with a foreach-loop.
	for item in &shoppingList {
		println!("{}", item);
	}

	// FIXME: If-statement
	// Modify the first for-loop (with i from 1 to 10) such that it prints 
	// "(value of i) is even" when "i" is divisible by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
	for i in 1..11 {
		match i % 2 {
			0 => println!("{} is even!", i),
			_ => println!("{} is odd!" , i),
		};	
	}

	// FIXME: Sum Up
	// Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains 
	// "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
	// If not, print "Nope, you don't need (value of "element")".
	let item: &str = "Chocolate";
	let mut found: bool = false;

	for &elem in shoppingList.iter() {		
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


	// FIXME: Functions - Ascii
	// Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
	// and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
	// Don't forget to call the function !
	TriForce();

	// FIXME: Functions - One parameter
	// Create a function that takes a string as parameter and returns "Hello (value of string) !"
	hello_string(name);

	// FIXME: Functions - Multiple parameters
	// Create a function that takes two integers as parameters and returns the addition of these two.
	// You can do the same with multiplication, subtraction and division.
	println!("1 + 2 = {}", add(1, 2));
	println!("1 - 2 = {}", sub(1, 2));
	println!("2 * 3 = {}", mult(2, 3));	

	// FIXME: User entry
	// Create a string variable that takes what the user enter in the console as value. 
	// Then print "You entered (value of string)"	
	let mut input = String::new();
	io::stdin().read_line(&mut input)
				   	 .ok()
				     .expect("Failed to read line");

	println!("You entered {}", input);

	// FIXME: While loop
	// Create a while loop that takes a number and divides it by 2 until it is less than 3
	let mut num: i32 = 1337;
	println!("{}", num);
	while num >= 3 {
		num /= 2;
		println!("{}", num);
	}

	// FIXME: do-While loop
	// Do the same with a do-while loop

	// Rust has no do-While loops

	// FIXME: Random generator
	// Create a function that returns a random number
	println!("{}", get_random());

	// FIXME: Random generator with bounds
	// Create another function that returns a random number between two bounds given as parameters.
	println!("{}", get_random_in_range(1, 100));

	// FIXME: Multidimensional array
	// Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
	// between 1 and 9 in each of the 9 rooms.
	// You may use one of the two previously created function.
	// Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
	// {x1,x2,x3,}
	// {x4,x5,x6,}
	// {x7,x8,x9,}
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

	// FIXME: Switch
	// Create a Switch that takes an integer "a" and return a sentence regarding the value of a
	// (Create 3 statements for 3 specific values and a default one)
	let x: i32 = 1332;
	println!("{}", match x {
			41 => "Almost the meaning of life!",
			42 => "The meaning of life!",
			1337 => "Mess with the best",
			_ => "die like the rest!"
		});

	// FIXME: logic Gates
	// Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
	// Each function takes two booleans as parameters and returns the result of the logic gate.
	// (or You can do it with a switch and only one function)
	println!("T && T = {}", logic("And", true, true));
	println!("T ^  T = {}", logic("Xor", true, true));
	println!("T || T = {}", logic("Or", true, true));
	println!("!T     = {}", logic("No", true, true));

	// FIXME - Reverse
	// Create a function that reverse a string
	let s = "abcd"; // Unicode characters in my string
	let s_rev: String = s.chars().rev().collect();	
	println!("{}", s_rev);
}

fn TriForce() {
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