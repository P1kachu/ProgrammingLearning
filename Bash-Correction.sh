
#
#  BashCorrection.sh
#  BashCorrection
#
#  Created by P1kachu on 15/07/15.
#  Copy$3 (c) 2015 P1kachu. All $3s reserved.
#!/bin/sh


# Part One:


# FIXME: Declare variables
# Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
age=20
name='Stan'

# FIXME: Print
# Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
echo "You are $name and you are $age years old !"

# FiXME: Concatenation
# Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
hello="Hello "
hello="$hello$name"
echo $hello

# FIXME: Array
# create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
# elements in "shoppingList" (using a function of the array/using the array)
shoppingList=('Raspberry Pi' 'NASA Shuttle' 'Aston Martin One-77') # Simple wishes
shoppingListLength=3

# FIXME: For-loop - Integer
# Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
for (( i = 0; i < 10; i++ )); do
    echo $i
done

# FIXME: For-loop - shoppingList
# Create a for loop that iterate through "shoppingList" and prints each element.
for (( i = 0; i < $shoppingListLength; i++ )); do
    echo "${shoppingList[$i]}"
done

# FIXME: Foreach-loop
# Do the same with a foreach-loop.
for item in "${shoppingList[@]}"
do
    echo $item
done

# FIXME: If-statement
# Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
# by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
for (( i = 0; i < 10; i++ )); do
    if [[ $(($i % 2)) -eq 0 ]]; then
        echo "$i is even"
    else
        echo "$i is odd"
    fi
done

# FIXME: Sum Up
# Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains 
# "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
# If not, print "Nope, you don't need (value of "element")".
element='NASA Shuttle'
found=false
for item in "${shoppingList[@]}"; do
    if [[ "$item" == "$element" ]]; then
        found=true
        break
    fi
done
if [[ "$found" ==  true ]]; then
    echo "You have to buy $element !"
else
    echo "Nope, you don't need $element"
fi



# Part Two:


# FIXME: Functions - Ascii
# Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
# and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
# Don't forget to call the function !

TriForce()
{
    echo "   /\\  "
    echo "  /__\\ "
    echo " /\\  /\\  "
    echo "/__\\/__\\ "
    echo "TRIFORCE"
}
TriForce

# FIXME: Functions - One parameter
# Create a function that takes a string as parameter and returns "Hello (value of string) !"
HelloFunc()
{
    echo "Hello $1 !"
}
HelloFunc "World"

# FIXME: Functions - Multiple parameters
# Create a function that takes two integers as parameters and returns the addition of these two.
# You can do the same with multiplication, subtraction and division.
Addition()
{
    echo $(( $1 + $2 ))
}

Subtraction()
{
    echo $(( $1 - $2 ))
}

Multiplication()
{
    echo $(( $1 * $2 ))
}

Division()
{
    echo $(( $1 / $2 ))
}

# I DO NOT USE RETURN STATEMENTS FOR A SIMPLE REASON: http://stackoverflow.com/a/17336953/3803389
Addition 18 24
Division 336 8
Multiplication 21 2
Subtraction 44  2

# FIXME: User entry
# Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
echo -n "Enter smthg: "
read userInput
echo "You entered $userInput"

# FIXME: While loop
# Create a while loop that takes a number and divides it by 2 until it is less than 3
nb=100
while [[ "$nb" -ge 3 ]]; do
    echo $nb
    ((nb/=2))
done

# FIXME: do-While loop
# Do the same with a do-while loop
# NO REAL DO...WHILE
nbTwo=100
while : ; do
    echo $nbTwo
    ((nbTwo/=2))
    [[  "$nbTwo" -ge 3 ]] || break
done

# FIXME: Random generator
# Create a function that returns a random number
getMaxInt()
{
    for ((i = 1, n = 2;; n = 1 << ++i)); do
      if [[ ${n:0:1} == '-' ]]; then
        printf -- "%20s" $(((1 << i) - 1))
        exit
      fi
    done
}

MAX_INT=$(getMaxInt)
GetRandom()
{
    echo $(( RANDOM % $MAX_INT ))
}
GetRandom

# FIXME: Random generator with bounds
# Create another function that returns a random number between two bounds given as parameters.

GetRandomBounded()
{
    echo $(( $(( RANDOM % $(($2 - $1 + 1)) )) + $1))
    # OR 
    # echo $(shuf -i 2000-65000 -n 1) # from http://stackoverflow.com/a/2556282/3803389
}
GetRandomBounded 10 15

# FIXME: Multidimensional array
# Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
# between 1 and 9 in each of the 9 rooms.
# You may use one of the two previously created function.
# Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
# {x1,x2,x3,}
# {x4,x5,x6,}
# {x7,x8,x9,}
declare -a arr
for (( i = 0; i < 3; i++ )); do
    echo -n "{"
    for (( j = 0; j < 3; j++ )); do
        arr[$i,$j]=$(GetRandomBounded 0 9)
        echo -n "${arr[$i,$j]},"
    done
    echo "}"
done

# FIXME: Switch
# Create a Switch that takes an integer "a" and return a sentence regarding the value of a
# (Create 3 statements for 3 specific values and a default one)
a=3
case "$a" in
"0")
    echo "a is 0"
    ;;
"1" | "3")
    echo "a is 1 or 3"
    ;;
*)
    echo "a is neither 0, 1 nor 3"
    ;;
esac

# FIXME: logic Gates
# Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
# Each function takes two booleans as parameters and returns the result of the logic gate.
# (or You can do it with a switch and only one function)


And()
{
    if [[ $1 == "true" && $2 == "true" ]]; then
        echo "true"
    else
        echo "false"
    fi
}


Or()
{
    if [[ $1 == "true" || $2 == "true" ]]; then
        echo "true"
    else
        echo "false"
    fi
}


No()
{
    if [[ $1 == "false" ]]; then
        echo "true"
    else
        echo "false"
    fi
}


Nand()
{
    if [[ $1 == "true" && $2 == "true" ]]; then
        echo "false"
    else
        echo "true"
    fi
}


Nor()
{
    if [[ $1 == "false" && $2 == "false" ]]; then
        echo "true"
    else
        echo "false"
    fi
}

Xor()
{
    if [[ ($1 == "true" && $2 == "false") || ($1 == "false" && $2 == "true") ]]; then
        echo "true"
    else
        echo "false"
    fi
}

Xnor()
{
    if [[ ($1 == "true" && $2 == "false") || ($1 == "false" && $2 == "true") ]]; then
        echo "false"
    else
        echo "true"
    fi
}

LogicGate()
{
    case "$2" in
    "AND")
        echo $(And $1 $3)
        ;;
    "OR")
        echo $(Or $1 $3)
        ;;
    "NO")
        echo $(No $3)
        ;;
    "NAND")
        echo $(And $1 $3)
        ;;
    "NOR")
        echo $(Nor $1 $3)
        ;;
    "XOR")
        echo $(Xor $1 $3)
        ;;
    "XNOR")
        echo $(Xnor $1 $3)
        ;;
    *)
        echo "Invalid Door"
        ;;
    esac
}
LogicGate "true" "AND" "true"

# FIXME - Reverse
# Create a function that reverse a string
Reverse()
{
    str=$1
    stringLength=${#str}

    for ((i=$(( $stringLength - 1 )); i>=0; i--)); do
        rev="$rev${str:$i:1}"
    done
    echo $rev
    # can be done directly with $(echo $1 | rev), but hey...
}

Reverse "this is a test"