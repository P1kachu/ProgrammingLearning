//
//  Javascript Correction
//
//  Created by faizaanceg on 05/11/15.
//  Copyright (c) 2015 faizaanceg. All rights reserved.
//
//  Reviewed by:
//      - No one yet.
//

//   Part One:

//   FIXME: Declare variables
//   Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
var age = 20
var name = "Faizaan"

//   FIXME: Print
//   Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
console.log("You are", name, "and you are", age, "years old!")

//   FIXME: Concatenation
//   Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
var hello = 'Hello '
hello = hello + name
console.log (hello)

//   FIXME: Array
//   create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
//   elements in "shoppingList" (using a function of the array/using the array)
var shoppingList = ["Sugar", "Honey", "Donuts"]
var noOfElts = shoppingList.length
console.log (noOfElts)

//   FIXME: For-loop - Integer
//   Create a simple for-loop for an integer "i" going from 1 to 10 that prints the value of "i"
for(var i = 0; i < 10 ; i++) console.log(i)

//   FIXME: For-loop - shoppingList
//   Create a for loop that iterate through "shoppingList" and prints each element.
for(var i = 0; i < noOfElts ; i++) console.log(shoppingList[i])

//   FIXME: Foreach-loop
//   Do the same with a foreach-loop.
shoppingList.forEach(function(value) { console.log(value) })

//   FIXME: If-statement
//   Modify the first for-loop (with i from 1 to 10) such that it console.logs "(value of i) is even" when "i" is divisible
//   by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
for(var i = 0 ; i < 10; i++)
    if (i % 2)
        console.log (i + " is odd")
    else
        console.log (i + " is even")

//   FIXME: Sum Up
//   Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
//   "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
//   If not, print "Nope, you don't need (value of "element")".
var element = "Tea"

var res = shoppingList.some(function (value) { return (value === element) })

if (!res)
    console.log ("You have to buy", element,"!")
else
    console.log ("Nope, you don't need", element)

//   Part Two:

//   FIXME: Functions - Ascii
//   Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
//   and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
//   Don't forget to call the function !
function Triforce(){
    console.log ("   /\\  ")
    console.log ("  /__\\ ")
    console.log (" /\\  /\\  ")
    console.log ("/__\\/__\\ ")
    console.log (" TRIFORCE ")
}

Triforce()

//   FIXME: Functions - One parameter
//   Create a function that takes a string as parameter and returns "Hello (value of string) !"
function Hello(str) {  return "Hello " + str + "!" }
console.log(Hello("Faizaan"))

//   FIXME: Functions - Multiple parameters
//   Create a function that takes two integers as parameters and returns the addition of these two.
//   You can do the same with multiplication, subtraction and division.
function Addition(a, b) { return a+b }

function Subtraction(a, b) { return a-b }

function Multiplication(a, b){ return a*b }

function Division(a, b) { return a/b }

console.log (Addition(18,24))
console.log (Division(336,8))
console.log (Multiplication(12,3.5))
console.log (Subtraction(44,2))

//   FIXME: User entry
//   Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
process.stdin.resume();
process.stdin.setEncoding('utf8');
var util = require('util');

process.stdin.on('data', function (text) {
    var input = util.inspect(text)
	console.log('You entered ' + input)
    process.stdin.end()
})

//   FIXME: While loop
//   Create a while loop that takes a number and divides it by 2 until it is less than 3
var number = 100
while (number >= 3) {
    console.log (number)
    number/=2
}

//   FIXME: do-While loop
//   Do the same with a do-while loop
number = 100
do {
    console.log (number)
    if (number < 3) break
    number/=2
} while(true)

//   FIXME: Random generator
//   Create a function that returns a random number
function rdmGen() { return Math.random() } 
console.log (rdmGen())

//   FIXME: Random generator with bounds
//   Create another function that returns a random number between two bounds given as parameters.
function rdmGenBounds(min, max) { return Math.floor(Math.random() * (max - min)) + min }
console.log (rdmGenBounds(0, 5))

//   FIXME: Multidimensional array
//   Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
//   between 1 and 9 in each of the 9 rooms.
//   You may use one of the two previously created function.
//   Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
//   {x1,x2,x3,}
//   {x4,x5,x6,}
//   {x7,x8,x9,}

var array = [Array(3), Array(3), Array(3)]
for (var i in array) {
    console._stdout.write("{")
    for (var j in array){
        array[i][j] = rdmGenBounds(1, 9)
        console._stdout.write(String(array[i][j]) + ",") //Strongly not advised. This is just to print without \n. 
	}
    console.log ("}")
}

//   FIXME: Switch
//   Create a Switch that takes an integer "a" and return a sentence regarding the value of a
//   (Create 3 statements for 3 specific values and a functionault one)
function Switch(input) {
	switch (input) {
		case 0:
			console.log ("You typed zero.")
			break;
		case 1:
			console.log ("Hello! This is one!")
			break;
		case 2:
			console.log ("Goodbye two!")
			break
		default: 
			console.log ("You think this is a game, #!$%#? Use 0, 1 or 2")
	}
}
	
Switch(1)

//   FIXME: logic Gates
//   Create 7 functions for each logic gates (and, or, not, nand, nor, xnor, xor).
//   Each function takes two booleans (or 0 and 1) as parameters and returns the result of the logic gate.
//   (or You can do it with a switch and only one function)

//   Logic gates are already well represented in JS. So, here they are represented in NAND logic.

function nand(a, b) { return !(a&b) }

function not(a) { return nand(a,a) }

function and(a, b) { return nand(nand(a, b), nand(a, b) ) }

function or(a, b) { return nand(not(a), not(b) ) }

function xnor(a, b) { return not(xor(a, b)) }

function xor(a, b) { return nand(nand(a, nand(a, b)), nand( nand(a, b), b)) }
        
function nor(a, b) { return nand(or(a, b), or(a, b)) }

//   FIXME - Reverse
//   Create a function that reverse a string (basic method)
function reverseString(str) { return str.split('').reverse().join('') }
    
console.log (reverseString("Hello"))