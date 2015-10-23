//
//  FantomCorrection.fan
//  FantomCorrection
//
//  Created by P1kachu on 21/06/15.
//  Copyright (c) 2015 P1kachu. All rights reserved.
//
//  Reviewed by:
//      - No one yet.
//

using util
class FantomCorrection{
    Void main(){

        // Part One:


        // FIXME: Declare variables
        // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
        age := 20
        name := "Pikachu"

        // FIXME: Pr
        // Pr the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end if required
        echo("You are " + name + " and you are " + age + " years old !")

        // FiXME: Concatenation
        // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
        hello := "Hello "
        hello += name
        echo(hello)

        // FIXME: Array
        // create a new string array called "shoppingList", with three elements of your choice. Create an  variable containing the number of
        // elements in "shoppingList" (using a function of the array/using the array)
        shoppingList := [ "Tea", "Raspberry", "Pi" ]
        nbOfElts := shoppingList.size

        // FIXME: For-loop - Intinteger
        // Create a simple for-loop for an integer "i" going from 1 to 10 that prints the value of "i"
        for ( i := 1; i <11; i++)
            echo(i)


        // FIXME: For-loop - shoppingList
        // Create a for loop that iterate through "shoppingList" and prints each element.
        for ( i := 0; i <nbOfElts; i++)
            echo(shoppingList[i])


        // FIXME: Foreach-loop
        // Do the same with a foreach-loop.
        shoppingList.each |Int item|
        {
            echo (item)
        }

        // FIXME: If-statement
        // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
        // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
        for ( i := 1; i <11; i++)
        {
            if(i % 2==0)
                echo(i.toStr() + " is even")
            else
                echo(i.toStr() + " is odd")
        }
        // FIXME: Sum Up
        // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
        // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
        // If not, print "Nope, you don't need (value of "element")".
        element := "Pi"
        tmp := 0
        for ( i := 0; i < nbOfElts; i++)
            if (shoppingList[i] == element)
                tmp = 1
        if (tmp == 1)
            echo("You have to buy "+element+" !")
        else
            echo("Nope, you don't need "+element)


        // Part Two:


        // FIXME: Functions - Ascii
        // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
        // and print the TriForce symbol (one triangle over two other ones, can be found on ernet) with "TRIFORCE"
        // Don't forget to call the function !
        TriForce()

        // FIXME: Functions - One parameter
        // Create a function that takes a string as parameter and returns "Hello (value of string) !"
        echo(Hello("Luke"))

        // FIXME: Functions - Multiple parameters
        // Create a function that takes two integers as parameters and returns the addition of these two.
        // You can do the same with multiplication, subtraction and division.
        echo(Addition(18,24))
        echo(Division(336,8))
        echo(Multiplication(21,2))
        echo(Subtraction(44,2))

        // FIXME: User input
        // Create a string variable that takes what the user enters in the console as value. Then printint "You entered (value of string)"
        str := Env.cur.in.readLine
        echo("You entered :$str:")

        // FIXME: While loop
        // Create a while loop that takes a number and divides it by 2 until it is less than 3
        nb := 100
        while(nb >= 3)
        {
            echo(nb)
            nb/=2
        }

        // FIXME: do-While loop
        // Do the same with a do-while loop
        // Not Supported (http://fantom.org/doc/docLang/Statements)

        // FIXME: Random generator
        // Create a function that returns a random number
        randInt()

        // FIXME: Random generator with bounds
        // Create another function that returns a random number between two bounds given as parameters.
        randIntBounds(0,5)

        // FIXME: Multidimensional array
        // Create a two dimensional  array of 3 columns and 3 rows. Use 2 for-loops to add a random number
        // between 1 and 9 in each of the 9 rooms.
        // You may use one of the two printeviously created function.
        // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
        // Features which are not yet available in Java FFI: Multi-dimensional arrays (http://web.mit.edu/fantom_v1.0.61/doc/docLang/JavaFFI.html)

        // FIXME: Switch
        // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
        // (Create 3 statements for 3 specific values and a default one)
         a := 3

        switch(a)
        {
            case 1 :
            echo("a = 1")

            case 2 :
            echo("a = 2")

            case 3 :
            echo("a = 3")

            default :
            echo("a != 1/2/3\n")
        }

        // FIXME: logic Gates
        // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
        // Each function takes two booleaneans as parameters and returns the result of the logic gate.
        // (or You can do it with a switch and only one function)
        echo(LogicGate("true",0,"false"))

        // FIXME - Reverse
        // Create a function that reverse a string
        echo(reverse("Hello!"))
    }

        //Functions Declarations

        Void TriForce()
        {
            echo("   /\\  ")
            echo("  /__\\ ")
            echo(" /\\  /\\  ")
            echo("/__\\/__\\ ")
            echo("TRIFORCE")
        }

        Str Hello(Str name)
        {
            return "Hello " + name + " !\n"
        }
        Int Addition(Int a, Int b)
        {
            return a + b
        }

        Int Subtraction(Int a, Int b)
        {
            return a - b
        }

        Int Multiplication(Int a,Int  b)
        {
            return a * b
        }

        Int Division(Int a, Int b)
        {
            return a / b
        }


        public Int randInt()
        {
            rand := Random.makeSeeded()
            return rand.next((0..65535))
        }

        public Int randIntBounds(Int min, Int max)
        {
            rand := Random.makeSeeded()
            return rand.next((min..max))
        }

        Bool LogicGate(Str left, Int door, Str right)
        {
            Bool a
            Bool b

            if ( left == "true")
            a = true
            else a = false

            if ( right == "true")
            b = true
            else b = false


            switch (door)
            {
                case 0:
                    return And(a, b)
                case 1:
                    return Or(a, b)
                case 2:
                    return No(a)
                case 3:
                    return Nand(a, b)
                case 4:
                    return Nor(a, b)
                case 5:
                    return Xor(a, b)
                case 6:
                    return Xnor(a, b)


                default:
                return false
            }
        }

        Bool And(Bool a, Bool b)
        {
            if (a && b)
                return true
            else
                return false
            // return (a && b)
        }


        Bool Or(Bool a, Bool b)
        {
            if (a || b)
                return true
            else
                return false
            // return (a || b)
        }


        Bool No(Bool a)
        {
            if (a)
                return false
            else
                return true
            // return (!a)
        }


        Bool Nand(Bool a, Bool b)
        {
            if (a && b)
                return false
            else
                return true
            // return !(a && b)
        }


        Bool Nor(Bool a, Bool b)
        {
            if (a && b)
                return true
            else
                return false
            // return !(a || b)
        }

        Bool Xor(Bool a, Bool b)
        {
            if ((a && b) || (a && b))
                return true
            else
                return false
            // return ((a && b) || (a && b))
        }

        Bool Xnor(Bool a, Bool b)
        {
            if ((a && b) || (a && b))
                return false
            else
                return true
            // return !((a && b) || (a && b))
        }

        Str reverse(Str str)
        {
            return str.reverse() // Yes quite useless
            // But why reinvent the wheel...
        }
  }
