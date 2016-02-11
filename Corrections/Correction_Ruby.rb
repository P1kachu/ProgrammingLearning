#
#  Correction_Ruby.rb
#  Correction Ruby
#
#  Created by P1kachu on 10/02/16.
#  Copyright (c) 2016 P1kachu. All rights reserved.
#
#  Reviewed by:
#      - No one yet.
#

#!/usr/bin/ruby -w
# -w raises warnings

# Part One:

# FIXME: Declare variables
# Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
age = 21;        # Lines can be terminated with semi-colon
name = "P1kachu" # or nothing (\n)

# FIXME: Print
# Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
puts("You are #{ name } and you are #{ age } years old!"); # Parenthesis can be omitted

# FiXME: Concatenation
# Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
hello = "Hello ";
hello = hello << name; # The usual '+' operator can, of course, be used
puts hello;

# FIXME: Array
# create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
# elements in "shoppingList" (using a function of the array/using the array)
shoppingList = Array["a kitty", "a phone case with a kitty on it", "more shirts with kittens on it"]; # I like cats.
nb_of_elts =  shoppingList.length;

# FIXME: For-loop - Integer
# Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
for i in 1...11
  puts i;
end

# FIXME: For-loop - shoppingList
# Create a for loop that iterate through "shoppingList" and prints each element.
for i in 0..nb_of_elts - 1
  puts shoppingList[i];
end

# FIXME: Foreach-loop
# Do the same with a foreach-loop.
shoppingList.each { |elt|
  puts elt;
}

# FIXME: If-statement
# Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
# by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
for i in 1...10
  if i % 2 == 0
    puts "#{ i } is even";
  else
    puts "#{ i } is odd";
  end
end

# FIXME: Sum Up
# Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
# "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
# If not, print "Nope, you don't need (value of "element")".
element = "a kitty";
bool = false;

shoppingList.each { |elt|
  if element == elt
    bool = true;
    break;
  end
}

if bool
  puts "You have to buy #{ element } !";
else
  puts "Nope, you don't need #{ element }.";
end




# Part Two:


# FIXME: Functions - Ascii
# Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
# and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
# Don't forget to call the function !
def TriForce
    puts("   /\\  ");
    puts("  /__\\ ");
    puts(" /\\  /\\  ");
    puts("/__\\/__\\ ");
    puts(" TRIFORCE ");
end

TriForce();

# FIXME: Functions - One parameter
# Create a function that takes a string as parameter and returns "Hello (value of string) !"
def HelloString(str)
  puts "Hello #{ str } !"
end
HelloString("Reb");

# FIXME: Functions - Multiple parameters
# Create a function that takes two integers as parameters and returns the addition of these two.
# You can do the same with multiplication, subtraction and division.
def add(a, b)
  a + b; # 'return' is implicit
end

def sub(a,b)
  return a - b;
end

def div(a, b)
  return a / b;
end

def mul(a, b)
  return a * b;
end

# FIXME: User entry
# Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
userInput = gets
puts "You entered #{ userInput }"

# FIXME: While loop
# Create a while loop that takes a number and divides it by 2 until it is less than 3
i = 25;
while i > 3
  puts i;
  i /= 2;
end

# FIXME: do-While loop
# Do the same with a do-while loop
# No do while in ruby

# FIXME: Random generator
# Create a function that returns a random number
def getRand()
  # With 32-bit MAX_INT to be able to have cool numbers
  return Random.rand() * 2147483647;
end

# FIXME: Random generator with bounds
# Create another function that returns a random number between two bounds given as parameters.
def getRand(a, b)
  return Random.rand(a...b)
end

# FIXME: Multidimensional array
# Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
# between 1 and 9 in each of the 9 rooms.
# You may use one of the two previously created function.
# Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
# {x1,x2,x3,}
# {x4,x5,x6,}
# {x7,x8,x9,}
m = Array.new(3) { Array.new(3) };
for i in 0...3 do
  print "{";
  for j in 0...3 do
    m[i][j] = getRand(0, 9);
    print "#{ m[i][j] }, ";
  end
  puts "}";
end

# FIXME: Switch
# Create a Switch that takes an integer "a" and return a sentence regarding the value of a
# (Create 3 statements for 3 specific values and a default one)
a = 2;

case a
when 0
  puts "a is NULL"
when 1
  puts "a == 1"
when 2
  puts "a == 2"
else
  puts "a is smthg else"
end

# FIXME: logic Gates
# Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
# Each function takes two booleans as parameters and returns the result of the logic gate.
# (or You can do it with a switch and only one function)
def And(a, b)
  return a && b
end

def Or(a, b)
  return a || b
end

def No(a)
  return !a
end

def Nand(a, b)
  return !(a && b)
end

def Nor(a, b)
  return !(a || b)
end

def Xnor(a, b)
  return !(a ^ b)
end

def Xor(a, b)
  return (a ^ b)
end

# FIXME - Reverse
# Create a function that reverse a string
def Reverse(str)
  return str.reverse! # Okay, completely useless
end
