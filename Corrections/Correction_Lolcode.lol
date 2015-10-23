OBTW
    How to practice a language !
    LOLCODECorrection.lol
    LOLCODE Correction

    Created by P1kachu on 19/06/15.
    Copyright (c) 2015 P1kachu. All rights reserved.

    Reviewed by:
        - No one yet.

TLDR



BTW Part One:
HAI 1.4
CAN HAS STDIO?

OBTW Declare variables
     Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
TLDR
I HAS A age ITZ 20
I HAS A name ITZ "P1kachu"

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
I HAS A numberOfElementz ITZ 3

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
IM IN YR SHOPPING_LOOP UPPIN YR i TIL BOTH SAEM i AN numberOfElementz
    VISIBLE shoppingList'Z SRS i
IM OUTTA YR SHOPPING_LOOP

OBTW Foreach-loop
     Do the same with a foreach-loop.
TLDR
BTW DEPENDS REGARDING LOLCODE VERSIONS --> SO I won't do it 'cause I'm lazy.

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
IM IN YR SHOPPING_LOOP UPPIN YR i TIL BOTH SAEM i AN numberOfElementz
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
HOW IZ I TriForce
    VISIBLE "TRIFORCE"
IF U SAY SO
I IZ TriForce MKAY

OBTW Functions - One parameter
     Create a function that takes a string as parameter and returns "Hello (value of string) !"
TLDR
HOW IZ I HelloString YR str
    VISIBLE SMOOSH "Hello " str MKAY
IF U SAY SO
I IZ HelloString YR "LULZ" MKAY

OBTW Functions - Multiple parameters
     Create a function that takes two integers as parameters and returns the addition of these two.
     You can do the same with multiplication, subtraction and division.
TLDR
HOW IZ I addition YR firstNumba AN YR secondNumba
    FOUND YR SUM OF firstNumba AN secondNumba
IF U SAY SO

HOW IZ I substraction YR firstNumba AN YR secondNumba
    FOUND YR DIFF OF firstNumba AN secondNumba
IF U SAY SO

HOW IZ I division YR firstNumba AN YR secondNumba
    FOUND YR QUOSHUNT OF firstNumba AN secondNumba
IF U SAY SO

HOW IZ I multiplication YR firstNumba AN YR secondNumba
    FOUND YR PRODUKT OF firstNumba AN secondNumba
IF U SAY SO

VISIBLE I IZ addition YR 5 AN YR 10 MKAY
VISIBLE I IZ substraction YR 5 AN YR 10 MKAY
VISIBLE I IZ division YR 50 AN YR 10 MKAY
VISIBLE I IZ multiplication YR 5 AN YR 10 MKAY

OBTW User entry
     Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
TLDR
I HAS A userEntry
GIMMEH userEntry
VISIBLE SMOOSH "You entered " userEntry MKAY

OBTW While loop
     Create a while loop that takes a number and divides it by 2 until it is less than 3
TLDR
I HAS A temp ITZ 35
IM IN YR WHILE_LOOP
    BOTH SAEM temp AN SMALLR OF 3 AN temp, O RLY?
        YA RLY
            GTFO
        NO WAI
            temp R DIFF OF temp AN 3
            VISIBLE temp
        OIC
IM OUTTA YR WHILE_LOOP

OBTW do-While loop
     Do the same with a do-while loop
     ITZ THE SAEM (ALMOST)
TLDR

OBTW Random generator
     Create a function that returns a random number
TLDR
HOW IZ I randomizin
    BTW MUCH RANDOM
    VISIBLE "SEED ME, HUMANZ: "!
    I HAS A seed, GIMMEH seed
    seed R PRODUKT OF 69069 AN seed
    seed R SUM OF 1 AN seed
    seed R MOD OF seed AN 10
    FOUND YR seed
IF U SAY SO
VISIBLE I IZ randomizin MKAY

OBTW Random generator with bounds
     Create another function that returns a random number between two bounds given as parameters.
     NO WAY I DO DAT, ITZ THE SAEM
TLDR

OBTW Multidimensional array
     Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
     between 1 and 9 in each of the 9 rooms.
     You may use one of the two previously created function.
     Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
     {x1,x2,x3,}
     {x4,x5,x6,}
     {x7,x8,x9,}

     I NEVER LIEKD DIS EXERCIZE
TLDR


OBTW Switch
     Create a Switch that takes an integer "a" and return a sentence regarding the value of a
     (Create 3 statements for 3 specific values and a default one)
TLDR
I HAS A a ITZ 5
a, WTF?
    OMG 1
        VISIBLE "a HIZ 1"
        GTFO
    OMG 2
        VISIBLE "a HIZ 2"
        GTFO
    OMG 5
        VISIBLE "a HIZ 5"
        GTFO
    OMGWTF
        VISIBLE "a HIZ SMTHG ELZE"
        GTFO
    OIC

OBTW logic Gates
     Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
     Each function takes two booleans as parameters and returns the result of the logic gate.
     (or You can do it with a switch and only one function)

     Oh god...
TLDR
HOW IZ I And YR boolz1 AN YR boolz2
    FOUND YR BOTH OF boolz1 AN boolz2
IF U SAY SO

HOW IZ I Or YR boolz1 AN YR boolz2
    FOUND YR EITHER OF boolz1 AN boolz2
IF U SAY SO

HOW IZ I No YR boolz1
    FOUND YR NOT boolz1
IF U SAY SO

HOW IZ I Nand YR boolz1 AN YR boolz2
    FOUND YR NOT BOTH OF boolz1 AN boolz2
IF U SAY SO

HOW IZ I Nor YR boolz1 AN YR boolz2
    FOUND YR NOT EITHER OF boolz1 AN boolz2
IF U SAY SO

HOW IZ I Xnor YR boolz1 AN YR boolz2
    FOUND YR WON OF boolz1 AN boolz2
IF U SAY SO

HOW IZ I Xor YR boolz1 AN YR boolz2
    FOUND YR NOT WON OF boolz1 AN boolz2
IF U SAY SO

BTW VISIBLE I IZ And YR WIN AN YR FAIL MKAY
BTW VISIBLE I IZ Or YR WIN AN YR FAIL MKAY
BTW VISIBLE I IZ No YR WIN
BTW VISIBLE I IZ Nand YR WIN AN YR FAIL MKAY
BTW VISIBLE I IZ Nor YR WIN AN YR FAIL MKAY
BTW VISIBLE I IZ Xnor YR WIN AN YR FAIL MKAY
BTW VISIBLE I IZ Xor YR WIN AN YR FAIL MKAY

OBTW FIXME - Reverse
     Create a function that reverse a string
     "LOLCODE has no character processing functions" (http://progopedia.com/language/lolcode/) and I'm Lazy
TLDR

KTHXBYE
