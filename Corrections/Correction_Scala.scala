import java.util.{Random, Scanner}

//
//  ScalaCorrection.java
//  ScalaCorrection
//
//  Created by Remus32 on 20/09/15.
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
  {
    var i = 0
    for (i <- 1 to 10) {
      println(i)
    }
  }

  // FIXME: For-loop - shoppingList
  // Create a for loop that iterate through "shoppingList" and prints each element.
  {
    var x = 0
    for (x <- 0 to shoppingList.length - 1) {
      println(shoppingList(x))
    }
  }


  // FIXME: Foreach-loop
  // Do the same with a foreach-loop.
  shoppingList.foreach(println(_))

  // FIXME: If-statement
  // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
  // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
  var x = 0
  for(x <- 1 to 10){
    if(x % 2 == 0) println(x + " is even")
    else println(x) + " is odd"
  }

  // FIXME: Sum Up
  // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
  // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
  // If not, print "Nope, you don't need (value of "element")".
  val element = "Tea"
  var i = 0
  var tmp = false
  for(i <- 0 to shoppingList.length-1){
      if (shoppingList(i) == element) {
        tmp = true
      }
  }
  if (tmp) System.out.println("You have to buy " + element + " !")
  else System.out.println("Nope, you don't need " + element)





  // Part Two:


  // FIXME: Functions - Ascii
  // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
  // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
  // Don't forget to call the function !
  def TriForce(){
    println("   /\\  ")
    println("  /__\\ ")
    println(" /\\  /\\  ")
    println("/__\\/__\\ ")
    println("TRIFORCE")
  }
  TriForce


  // FIXME: Functions - One parameter
  // Create a function that takes a string as parameter and returns "Hello (value of string) !"
  def hello2():String={
    return "Hello"
    //or
    "Hello"
    //last expression in function is returned
  }

  // FIXME: Functions - Multiple parameters
  // Create a function that takes two integers as parameters and returns the addition of these two.
  // You can do the same with multiplication, subtraction and division.
  def Addition(a: Int, b: Int): Int = {
    a + b
  }

  def Subtraction(a: Int, b: Int): Int = {
    a - b
  }

  def Multiplication(a: Int, b: Int): Int = {
    a * b
  }

  def Division(a: Int, b: Int): Int = {
    a / b
  }

  // FIXME: User entry
  // Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
  val user_input = new Scanner(System.in)
  val user_inputS = user_input.next
  println("You entered " + user_inputS)
  //It is clever to use jline library

  // FIXME: While loop
  // Create a while loop that takes a number and divides it by 2 until it is less than 3
  var num = 100
  while(num<3){
    println(num)
    num = num/2
  }

  // FIXME: do-While loop
  // Do the same with a do-while loop
  {
    var num = 100
    do {
      println(num)
      num = num / 2
    } while (num < 3)
  }

  // FIXME: Random generator
  // Create a function that returns a random number

  def randInt: Int = {
    val rand = new Random
    rand.nextInt(Integer.MAX_VALUE)
  }

  // FIXME: Random generator with bounds
  // Create another function that returns a random number between two bounds given as parameters.

  def randIntBounds(min: Int, max: Int): Int = {
    val rand: Random = new Random
    rand.nextInt((max - min) + 1) + min
  }

  // FIXME: Multidimensional array
  // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
  // between 1 and 9 in each of the 9 rooms.
  // You may use one of the two previously created function.
  // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
  // {x1,x2,x3,}
  // {x4,x5,x6,}
  // {x7,x8,x9,}

  val size: Int = 3
  var array = Array.ofDim[Int](size, size)

  {
    var x = 0
    for(x <- 0 to size-1){
      var x2 = 0
      for(x2 <- 0 to size-1){
        array(x)(x2) = randIntBounds(1,9)
      }
    }
  }

  {
    var x = 0
    for(x <- 0 to size-1){
      print("{")
      var x2 = 0
      for(x2 <- 0 to size-1){
        print(array(x)(x2)+",")
      }
      print("}\n")
    }
  }

  // FIXME: Switch
  // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
  // (Create 3 statements for 3 specific values and a default one)
  val a = Integer.parseInt(user_input.next)
    a match {
      case 1 => println("a=1")
      case 1 => println("a=2")
      case 3 => println("a=3")
      case x => println("Default, value="+x)
    }

  // FIXME: logic Gates
  // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
  // Each function takes two booleans as parameters and returns the result of the logic gate.
  // (or You can do it with a switch and only one function)
  def LogicGate(left:Boolean,right:Boolean,gate:Boolean): Boolean = {
    gate match {
      case 0 =>
        return And(left,right)
      case 1 =>
        return Or(left,right)
      case 2 =>
        return No(left)
      case 3 =>
        return Nand(left,right)
      case 4 =>
        return Nor(left,right)
      case 5 =>
        return Xor(left,right)
      case 6 =>
        return Xnor(left,right)
      case x =>
        return false
    }
    def And(a: Boolean, b: Boolean): Boolean = {
      if (a && b) return true
      else return false
    }

    def Or(a: Boolean, b: Boolean): Boolean = {
      if (a || b) return true
      else return false
    }

    def No(a: Boolean): Boolean = {
      if (a) return false
      else return true
    }

    def Nand(a: Boolean, b: Boolean): Boolean = {
      if (a && b) return false
      else return true
    }

    def Nor(a: Boolean, b: Boolean): Boolean = {
      if (a && b) return true
      else return false
    }

    def Xor(a: Boolean, b: Boolean): Boolean = {
      if ((a && b) || (a && b)) return true
      else return false
    }

    def Xnor(a: Boolean, b: Boolean): Boolean = {
      if ((a && b) || (a && b)) return false
      else return true
    }

  }

  // FIXME - Reverse
  // Create a function that reverse a string

  def reverseString(str: String): String = {
    val array: Array[Char] = str.toCharArray
    var stringy: String = ""
    var x = 0
    for(x <- 0 to array.length-1){
      val a = array(x)
      stringy = a+stringy
    }
    stringy
  }
}