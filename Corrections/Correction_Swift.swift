//
//  SwiftCorrection.swift
//  HowToPracticeALanguage
//
//  Created by P1kachu on 14/09/14.
//
//  Reviewed by:
//      - No one yet.
//

import Foundation

// Part One:


// FIXME: Declare variables
// Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
var age:Int = 19
var name:String = "Stan"

// FIXME: Print
// Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
print("You are \(name) and you are \(age) years old !") //or
print("You are \(name) and you are \(age) years old ! \n")

// FiXME: Concatenation
// Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
var hello:String = "Hello "
hello += name
print(hello)

// FIXME: Array
// create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
// elements in "shoppingList" (using a function of the array/using the array)
var shoppingList:[String] = ["some milk", "a Chevy Camaro", "a life"]
var nbOfElemts:Int = shoppingList.count

// FIXME: For-loop - Integer
// Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
for i in 1...10
{
    print(i)
}

// FIXME: For-loop - shoppingList
// Create a for loop that iterate through "shoppingList" and prints each element with "You have to buy (elemt)".
for j in 0..<nbOfElemts
{
    print("You have to buy \(shoppingList[j])")
}
// FIXME: Foreach-loop
// Do the same with a foreach-loop.
for elemt in shoppingList // In Swift, foreach-loops ar for[...]in loops.
{
    print("You have to buy \(elemt)")
}

// FIXME: If-statement
// Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
// by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
for i in 1...10
{
    if i%2 == 0
    {
        print("\(i) is even")
    }
    else
    {
        print("\(i) is odd")
    }
}

// FIXME: Sum Up
// Create a string variable called "element" with the value of your choice. Then create a for-loop/foreach-loop that checks if "shoppingList"
// contains "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
// If not, print "Nope, you don't need (value of "element")".
let element:String = "a Chevy Camaro"; //Declaring a constant
for elemt in shoppingList
{
    if elemt == element
    {
        print("You have to buy \(elemt)!")
        break
    }
    else
    {
        print("Nope, you don't need \(elemt)")
    }
}
//You can also do it without looping with the "contains" function:

/*if (contains(shoppingList,element))
{
    print("You have to buy \(element)!")
}
else
{
    print("Nope, you don't need \(element)")
}*/





// Part Two:


// FIXME: Functions - Ascii
// Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
// and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
// Don't forget to call the function !
func TriForce() -> Void // When returning void, you can just write func TriForce(){ // Do stuff } without returning type
{
    print("   /\\  ")
    print("  /__\\ ")
    print(" /\\  /\\  ")
    print("/__\\/__\\ ")
    print("TRIFORCE")
}
TriForce() //Calling the function


// FIXME: Functions - One parameter
// Create a function that takes a string as parameter and returns "Hello (value of string) !"
func Hello(yourName:String) -> String
{
    return  "Hello \(yourName)!"
}
print(Hello("Stan"))


// FIXME: Functions - Multiple parameters
// Create a function that takes two integers as parameters and returns the addition of these two.
// You can do the same with multiplication, subtraction and division.

func Addition(a: Int, b: Int) -> Int
{
    return a + b
}
func Subtraction(a:Int, b:Int) -> Int
{
    return a - b
}
func Multiplication(a:Int, b:Int) -> Int
{
    return a * b
}
func Division(a:Int, b:Int) -> Int
{
    return a / b
}
print(Addition(5, b: 12))
print(Subtraction(5, b: 12))
print(Multiplication(5, b: 12))
print(Division(5, b: 12)) // returns 0 because "a" and "b" are Integers
print(Division(10, b: 2))


// FIXME: User entry
// Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
// At this point, the Swift programming language doessn't have any easy function to get the user input,
// so you may skip this one. Here is a way to do it (Works in XCode6b5):
/*func input() -> String
{
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)
}
var userInput:String = input()
print("Uou entered \(userInput)")
*/

// FIXME: While loop
// Create a while loop that takes a number and divides it by 2 until it is less than 3
var number = 57
while number > 3
{
    number = number/2
    // can be done with number /= 2
    print("\(number) ")
}
//print()


// FIXME: do-While loop
// Do the same with a do-while loop
var number2 = 526
repeat{
    number2 /= 2
    print("\(number2) ")
} while number2 > 3;
//print()



// FIXME: Random generator
// Create a function that returns a random number
func rdm() -> Int
{
    return Int(arc4random())
}


// FIXME: Random generator with bounds
// Create another function that returns a random number between two bounds given as parameters.
func rdmBounds(a:UInt32, b:UInt32) -> Int
{
    return Int(arc4random_uniform(b - a) + a)
}
for i in 0...10
{
    print((rdmBounds(0, b: 10)))
}
//print()


// FIXME: Multi-dimensionnal array
// Create a two dimensionnal int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
// between 1 and 9 in each of the 9 rooms.
// You may use one of the two previously created function.
// Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
// {x1,x2,x3,}
// {x4,x5,x6,}
// {x7,x8,x9,}
var multiArray:[[Int]] = [[0,0,0],[0,0,0],[0,0,0]] //easy Initialization
for i in 0..<multiArray.count
{
    for j in 0..<multiArray[i].count
    {
        multiArray[i][j] = rdmBounds(1, b: 10)
    }
}

for elemnt in multiArray
{
    print("{")
    for numbers in elemnt
    {
        print("\(numbers),")
    }
    print("},")
}


// TODO: Switch
//
