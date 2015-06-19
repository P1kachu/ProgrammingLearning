OBTW
    How to practice a language !
    LOLCODECorrection.lol
    LOLCODE Correction

    Created by Mr. ST4N on 19/06/15.
    Copyright (c) 2015 Mr. ST4N. All rights reserved.
TLDR



BTW Part One:
HAI 1.4
CAN HAS STDIO?

OBTW Declare variables
     Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
TLDR
I HAS A age ITZ 20
I HAS A name ITZ "Stan"

OBTW Print
     Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
TLDR
VISIBLE SMOOSH "You are " AN name AN " and you are " AN age AN " years old !" MKAY

OBTW Concatenation
     Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
TLDR
I HAS A Hello ITZ "Hello "
Hello R SMOOSH Hello AN name MKAY
VISIBLE Hello

OBTW Array
     create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
     elements in "shoppingList" (using a function of the array/using the array)
TLDR
I HAS A shoppingList ITZ A BUKKIT
shoppingList HAS A SRS 0 ITZ "FISH"
shoppingList HAS A SRS 1 ITZ "CATZ"
shoppingList HAS A SRS 2 ITZ "LOLZ"
I HAS A number_of_elementz ITZ 3

OBTW For-loop - Integer
     Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
TLDR
IM IN YR FOR_LOOP UPPIN YR i TIL BOTH SAEM i AN 10
    VISIBLE SMOOSH "i = " i MKAY
IM OUTTA YR FOR_LOOP

OBTW For-loop - shoppingList
     Create a for loop that iterate through "shoppingList" and prints each element.
    DISCLAIMER: "using SRS with an index is the general way to access arbitrary elements in arrays in LOLCODE.
                 The syntax should probably be improved in the future as it is not very intuitive."
                 http://forum.lolcode.org/viewtopic.php?f=4&t=28
TLDR
IM IN YR SHOPPING_LOOP UPPIN YR i TIL BOTH SAEM i AN number_of_elementz
    VISIBLE shoppingList'Z SRS i
IM OUTTA YR SHOPPING_LOOP

OBTW Foreach-loop
     Do the same with a foreach-loop.
TLDR
BTW DEPENDS REGARDING LOLCODE VERSIONS

OBTW If-statement
     Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
     by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
TLDR
IM IN YR FOR_LOOP UPPIN YR i TIL BOTH SAEM i AN 10
    BOTH SAEM 0 MOD OF i AN 2, O RLY?
        YA RLY
            VISIBLE SMOOSH i " is even" MKAY
        NO WAI
            VISIBLE SMOOSH i " is odd" MKAY
        OIC
IM OUTTA YR FOR_LOOP

OBTW Sum Up
     Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
     "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
     If not, print "Nope, you don't need (value of "element")".
TLDR
I HAS A element ITZ "CATZ"
I HAS A found ITZ A TROOF
found R FAIL
IM IN YR SHOPPING_LOOP UPPIN YR i TIL BOTH SAEM i AN number_of_elementz
    BOTH SAEM shoppingList'Z SRS i AN element, O RLY?
        YA RLY
            found R WIN
            GTFO
        OIC
IM OUTTA YR SHOPPING_LOOP

BOTH SAEM found AN WIN, O RLY?
    YA RLY
        VISIBLE SMOOSH "You have to buy " element " !" MKAY
    NO WAI
        VISIBLE SMOOSH "Nope, you don't need " element " !" MKAY
    OIC


BTW Part Two:

OBTW Functions - Ascii
     Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
     and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
     Don't forget to call the function !
TLDR


OBTW Functions - One parameter
     Create a function that takes a string as parameter and returns "Hello (value of string) !"
TLDR

OBTW Functions - Multiple parameters
     Create a function that takes two integers as parameters and returns the addition of these two.
     You can do the same with multiplication, subtraction and division.
TLDR

OBTW User entry
     Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
TLDR

OBTW While loop
     Create a while loop that takes a number and divides it by 2 until it is less than 3
TLDR

OBTW do-While loop
     Do the same with a do-while loop
TLDR

OBTW Random generator
     Create a function that returns a random number
TLDR

OBTW Random generator with bounds
     Create another function that returns a random number between two bounds given as parameters.
TLDR

OBTW Multidimensional array
     Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
     between 1 and 9 in each of the 9 rooms.
     You may use one of the two previously created function.
     Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
     {x1,x2,x3,}
     {x4,x5,x6,}
     {x7,x8,x9,}
TLDR


OBTW Switch
     Create a Switch that takes an integer "a" and return a sentence regarding the value of a
     (Create 3 statements for 3 specific values and a default one)
TLDR

OBTW logic Gates
     Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
     Each function takes two booleans as parameters and returns the result of the logic gate.
     (or You can do it with a switch and only one function)
TLDR

OBTW FIXME - Reverse
     Create a function that reverse a string
TLDR

KTHXBYE