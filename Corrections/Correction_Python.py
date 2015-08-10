#
#  PythonCorrection.py
#  PythonCorrection
#
#  Created by P1kachu on 07/02/15.
#  Copyright (c) 2015 P1kachu. All rights reserved.
import random
import sys

#   Part One:


#   FIXME: Declare variables
#   Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
age = 20
name = "Stan"

#   FIXME: Print
#   Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
print "You are", name, "and you are", age, "years old!"

#   FiXME: Concatenation
#   Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
hello = 'Hello '
hello = hello + name
print hello

#   FIXME: Array
#   create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
#   elements in "shoppingList" (using a function of the array/using the array)
shoppingList = ["Sugar", "Raspberry", "Pi"]
nbOfElts = len(shoppingList)
print nbOfElts

#   FIXME: For-loop - Integer
#   Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
for i in xrange(1,10):
    print i

#   FIXME: For-loop - shoppingList
#   Create a for loop that iterate through "shoppingList" and prints each element.
for i in xrange(0, nbOfElts):
    print shoppingList[i]

#   FIXME: Foreach-loop
#   Do the same with a foreach-loop.
for item in shoppingList:
    print item

#   FIXME: If-statement
#   Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
#   by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
for i in xrange(1,10):
    if i%2==0:
        print i,"is even"
    else:
        print i,"is odd"

#   FIXME: Sum Up
#   Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
#   "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
#   If not, print "Nope, you don't need (value of "element")".
element = "Tea"
tmp = 0
for item in shoppingList:
    if element == item:
        tmp = 1

if tmp == 1:
    print "You have to buy", element,"!"
else:
    print "Nope, you don't need", element




#   Part Two:


#   FIXME: Functions - Ascii
#   Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
#   and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
#   Don't forget to call the function !
def Triforce():
    print "   /\\  "
    print "  /__\\ "
    print " /\\  /\\  "
    print "/__\\/__\\ "
    print  "TRIFORCE"
Triforce()

#   FIXME: Functions - One parameter
#   Create a function that takes a string as parameter and returns "Hello (value of string) !"
def Hello(stringy):
    print "Hello ", stringy, "!"
Hello("Stan")

#   FIXME: Functions - Multiple parameters
#   Create a function that takes two integers as parameters and returns the addition of these two.
#   You can do the same with multiplication, subtraction and division.
def Addition(nb1, nb2):
    return nb1+nb2

def Subtraction(nb1, nb2):
    return nb1-nb2

def Multiplication(nb1, nb2):
    return nb1*nb2

def Division(nb1, nb2):
    return nb1/nb2

print Addition(18,24)
print Division(336,8)
print Multiplication(12,3.5)
print Subtraction(44,2)

#   FIXME: User entry
#   Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
# stringy = raw_input("Enter something:")
# print "You entered", stringy

#   FIXME: While loop
#   Create a while loop that takes a number and divides it by 2 until it is less than 3
number = 100
while number >= 3:
    number/=2
    print number

#   FIXME: do-While loop
#   Do the same with a do-while loop
# Official While loops don't exist in Python, or not as built-in element at least. Here is a simple way to emulate one:
number = 100
while True:
    print number
    if number < 3:
        break
    number/=2

#   FIXME: Random generator
#   Create a function that returns a random number
def rdmGen():
    return random.randrange(-sys.maxint, sys.maxint)
print rdmGen()

#   FIXME: Random generator with bounds
#   Create another function that returns a random number between two bounds given as parameters.
def rdmGenBounds(nb1, nb2):
    return random.randrange(nb1, nb2)
print rdmGenBounds(0, 5)

#   FIXME: Multidimensional array
#   Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
#   between 1 and 9 in each of the 9 rooms.
#   You may use one of the two previously created function.
#   Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
#   {x1,x2,x3,}
#   {x4,x5,x6,}
#   {x7,x8,x9,}

array = [[0 for x in range(3)] for x in range(3)]
for i in xrange(0,3):
    print "{",
    for j in xrange(0,3):
        array[i][j] = rdmGenBounds(1, 9)
        print array[i][j],",",
    print "}"


#   FIXME: Switch
#   Create a Switch that takes an integer "a" and return a sentence regarding the value of a
#   (Create 3 statements for 3 specific values and a default one)
# Python's solution is to use dictionnaries

def zero():
    print "You typed zero."

def hello():
    print "Hello!"

def goodbye():
    print "Goodbye..."

def default():
    print "Use 0, 1 or 2"
switch = {  0 : zero,
            1 : hello,
            2 : goodbye,
            3 : default,
}
a = 1
print switch[a]()

#   FIXME: logic Gates
#   Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
#   Each function takes two booleans (or 0 and 1) as parameters and returns the result of the logic gate.
#   (or You can do it with a switch and only one function)
def And(nb1, nb2):
    return nb1*nb2
def Or(nb1, nb2):
    if(nb1):
        return 1
    else:
        if(nb2):
            return 1
    return 0
def Xnor(nb1, nb2):
    if nb1 == nb2:
        return 1
    return 0
def Xor(nb1, nb2):
    if nb1 != nb2:
        return 1
    return 0
def No(nb1):
    return abs(1-nb1)
def Nand(nb1, nb2):
    return abs(1-And(nb1, nb2))
def Nor(nb1, nb2):
    return abs(1-Or(nb1, nb2))

#   FIXME - Reverse
#   Create a function that reverse a string (basic method)
def reverseString(stringy):
    stringy2 = ""
    for x in range(len(stringy)-1,-1, -1):
        stringy2 += stringy[x]
    return stringy2
print reverseString("Hello!")
