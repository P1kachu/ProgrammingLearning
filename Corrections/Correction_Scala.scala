import java.util.{Random, Scanner}

//
//  ScalaCorrection.scala
//  ScalaCorrection
//
//  Created by Remus32 on 20/09/15.
//  Reviewed by:
//      - rbobillo
//      - (null);
//
//  Copyright (c) 2015 Remus32. All rights reserved.

object ScalaCorrection{

	// Part One:

	// FIXME: Declare variables
	// Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
	val age = 20
	val name = "Darth Vader"

	// FIXME: Print
	// Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end if required
	println("You are " + name + " and you are " + age + " years old !")

	// FiXME: Concatenation
	// Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
	var hello = "Hello "
	hello += name
	println(hello)

	// FIXME: Array
	// create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
	// elements in "shoppingList" (using a function of the array/using the array)
	val shoppingList: Array[String] = Array("Tea", "Raspberry", "Pi")
	val nbOfElts: Int = shoppingList.length

	// FIXME: For-loop - Integer
	// Create a simple for-loop for an integer "i" going from 1 to 10 that prints the value of "i"
	for (i <- 1 to 10) {
		println(i)
	}
	// More idiomatic:   ( 1 to 10 ).foreach( println )

	println()
	// FIXME: For-loop - shoppingList
	// Create a for loop that iterate through "shoppingList" and prints each element.
	for (x <- shoppingList.indices) { // equivalent to: for (x <- 0 to shoppingList.length - 1)
		println(shoppingList(x))
	}
	// More idiomatic:   shoppingList.foreach( println )


	println()
	// FIXME: Foreach-loop
	// Do the same with a foreach-loop.
	shoppingList.foreach(println(_))

	println()
	// FIXME: If-statement
	// Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
	// by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
	(1 to 10).foreach {
		x => println( x + " is " + (if (x%2==0) "even" else "odd") )
	}

	println()
	// FIXME: Sum Up
	// Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
	// "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
	// If not, print "Nope, you don't need (value of "element")".
	val element = "Tea"
	var contains = ! shoppingList.forall( _ != element )
	// The forall method is a for loop checking if each element reacts identically to a common pattern
	if (contains) println("You have to buy " + element + " !")
	else          println("Nope, you don't need " + element)
	//The right way would avoid any loop, using the method 'contains':
	// if (shoppingList.contains(element)) ... else ...





	// Part Two:


	println()
	// FIXME: Functions - Ascii
	// Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
	// and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
	// Don't forget to call the function !
	def TriForce() {
		println("   /\\")
		println("  /__\\")
		println(" /\\  /\\")
		println("/__\\/__\\")
		println("TRIFORCE")
	}
	TriForce()


	println()
	// FIXME: Functions - One parameter
	// Create a function that takes a string as parameter and returns "Hello (value of string) !"
	def hello2(a:String):String = "Hello " + a
	// Function's return type is useless here
	// The function takes 1 param of certain type, and returns something of the same type
	// Then, the return type doesn't need to be set

	println()
	// FIXME: Functions - Multiple parameters
	// Create a function that takes two integers as parameters and returns the addition of these two.
	// You can do the same with multiplication, subtraction and division.
	def Addition(a: Int, b: Int):Int	= a + b
	def Subtraction(a: Int, b: Int)		= a - b
	def Multiplication(a: Int, b: Int)	= a * b
	def Division(a: Int, b: Int)		= a / b

	println()
	// FIXME: User entry
	// Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
	print("Please write something: ")
	val user_input = new Scanner(System.in)
	val user_inputS = user_input.next
	println("You entered " + user_inputS)
	//It is cleverer to use jline library (line edition, history... etc)


	println()
	// FIXME: While loop
	// Create a while loop that takes a number and divides it by 2 until it is less than 3
	var num = 30
	while (num >= 3) {
		println(num)
		num /= 2 //num = num/2
	}


	println()
	// FIXME: do-While loop
	// Do the same with a do-while loop
	num = 20
	do {
		println(num)
		num = num / 2
	} while (num >= 3)

	println()
	// FIXME: Random generator
	// Create a function that returns a random number
	def randInt =
		new Random().nextInt(Integer.MAX_VALUE)


	println()
	// FIXME: Random generator with bounds
	// Create another function that returns a random number between two bounds given as parameters.
	def randIntBounds(min: Int, max:
	Int) =
		new Random().nextInt((max - min) + 1) + min


	println()
	// FIXME: Multidimensional array
	// Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
	// between 1 and 9 in each of the 9 rooms.
	// You may use one of the two previously created function.
	// Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
	// {x1,x2,x3,}
	// {x4,x5,x6,}
	// {x7,x8,x9,}
	var array = Array.ofDim[Int](3,3).map( _.map(e => randIntBounds(1,9)) )
	/* This 'array' creation is done in an idiomatic way. It is equivalent to:
		var array = Array.ofDim[Int](size, size)
		for(x <- 0 to size-1 ; x2 <- 0 to size-1) array(x)(x2) = randIntBounds(1,9)
	*/
	array.map( _.mkString("{", ", ", ",}") ).foreach( println )


	println()
	// FIXME: Switch
	// Create a Switch that takes an integer "a" and return a sentence regarding the value of a
	// (Create 3 statements for 3 specific values and a default one)
	print( "Please enter an Integer value: " )
	val entry = user_input.next
	val a = if (! entry.matches("\\d+")) 0 // if entry is NaN, a = 0
	        else entry.toInt
	a match {
		case 1 => println("a=1")
		case 2 => println("a=2")
		case 3 => println("a=3")
		case x => println("Default, value=" + x)
	}

	println()
	// FIXME: logic Gates
	// Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
	// Each function takes two booleans as parameters and returns the result of the logic gate.
	// (or You can do it with a switch and only one function)
	def LogicGate(left:Boolean,right:Boolean,gate:String): Boolean = {

		def And(a: Boolean, b: Boolean)   =   a & b
		def Or(a: Boolean, b: Boolean)    =   a | b
		def No(a: Boolean)                = ! a
		def Nand(a: Boolean, b: Boolean)  = !(a & b)
		def Nor(a: Boolean, b: Boolean)   = !(a | b)
		def Xor(a: Boolean, b: Boolean)   =   a ^ b
		def Xnor(a: Boolean, b: Boolean)  = !(a ^ b)

		gate match {
			case "And"  => And(left,right)
			case "Or"   => Or(left,right)
			case "No"   => No(left)
			case "Nand" => Nand(left,right)
			case "Nor"  => Nor(left,right)
			case "Xor"  => Xor(left,right)
			case "Xnor" => Xnor(left,right)
			case _      => false
		}
	}
	println("And(false,true):  " + LogicGate(false, true, "And"))
	println("Or(false,true):   " + LogicGate(false, true, "Or"))
	println("Xor(false, true): " + LogicGate(false, true, "Xor"))

	println()
	// FIXME - Reverse
	// Create a function that reverse a string
	def reverseString( str:String ) = str.foldLeft("")( (a,b) => b+a )
	// Or in a more Functional way:   ("" /: str)( (a,b) => b+a )
	// And the logical way:           str.reverse
	print( "Please write a String to reverse: " )
	println( reverseString(user_input.next) )

	def main (args: Array[String]) = println()
}
