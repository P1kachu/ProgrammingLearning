
// GoCorrection.go
// GoCorrection

// Created by P1kachu on 15/04/15.
// Copyright (c) 2015 P1kachu. All rights reserved.

package main

import (
    "fmt"
    "os"
    "bufio"
    "math/rand"
    "time"
)

func main(){
    // Part One:

    // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
    age:= 20
    var name string = "Stan"

    // Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
    fmt.Printf("You are %s and your are %d years old\n", name, age)

    // FiXME: Concatenation
    // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
    Hello:= "Hello "
    Hello = Hello + name
    fmt.Println(Hello)

    // FIXME: Array
    // create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
    // elements in "shoppingList" (using a function of the array/using the array)

    shoppingList := []string{ "Cray Titan", "Milk", "Kitten" }
    size := len(shoppingList)

    // FIXME: For-loop - Integer
    // Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"

    for i := 1; i < 11; i++ {
        fmt.Printf("i = %d\n", i)
    }

    // FIXME: For-loop - shoppingList
    // Create a for loop that iterate through "shoppingList" and prints each element.

    for i := 0; i < size; i++ {
        fmt.Printf("%s\n", shoppingList[i])
    }

    // FIXME: Foreach-loop
    // Do the same with a foreach-loop.
    for _, element := range shoppingList { // "_" is because we don't care about the index here
        fmt.Printf("%s\n", element)
    }

    // FIXME: If-statement
    // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
    // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
    for i := 1; i < 11; i++ {
        if(i % 2 == 0){
            fmt.Printf("%d is even\n", i)
        }else{
            fmt.Printf("%d is odd\n", i)
        }
    }

    // FIXME: Sum Up
    // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains 
    // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
    // If not, print "Nope, you don't need (value of "element")".
    element := "Milk"
    tmp:=false
    for i := 0; i < size; i++ {
        if element == shoppingList[i] {
            tmp = true
            break
        }

    }
    if tmp {
        fmt.Printf("You have to buy %s!\n", element)
    }else{
        fmt.Printf("Nope, you don't need %s.\n", element)
    }

    // Part Two:


    // FIXME: Functions - Ascii
    // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
    // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
    // Don't forget to call the function !
    TriForce()

    // FIXME: Functions - One parameter
    // Create a function that takes a string as parameter and returns "Hello (value of string) !"
    HelloStr("fellow programmers!")

    // FIXME: Functions - Multiple parameters
    // Create a function that takes two integers as parameters and returns the addition of these two.
    // You can do the same with multiplication, subtraction and division.
    fmt.Println(Addition(18,24));
    fmt.Println(Division(336,8));
    fmt.Println(Multiplication(21,2));
    fmt.Println(Subtraction(44,2));

    // FIXME: User entry
    // Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
    reader := bufio.NewReader(os.Stdin)
    fmt.Print("Enter text: ")
    text, _ := reader.ReadString('\n')
    fmt.Printf("You entered %s",text)

    // FIXME: While loop
    // Create a while loop that takes a number and divides it by 2 until it is less than 3
    nb:= 100
    for nb >= 3{
        nb/=2;
        fmt.Println(nb);
    }

    // FIXME: do-While loop
    // Do the same with a do-while loop
    for value := 100;; {
        value/=2
        fmt.Println(value)
        if value <= 3 {
            break
        }
    }

    // FIXME: Random generator
    // Create a function that returns a random number
    rand.Seed(time.Now().Unix())
    randomInt()

    // FIXME: Random generator with bounds
    // Create another function that returns a random number between two bounds given as parameters.
    for i := 0; i < 10; i++ {
        fmt.Printf("%d,",randBounds(-10, 10))
    }
    fmt.Println()

    // FIXME: Multidimensional array
    // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
    // between 1 and 9 in each of the 9 rooms.
    // You may use one of the two previously created function.
    // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
    // {x1,x2,x3,}
    // {x4,x5,x6,}
    // {x7,x8,x9,}
    var matrix[3][3]int
    for i := 0; i < 3; i++ {
        fmt.Printf("{")
        for j := 0; j < 3; j++ {
            matrix[i][j] = randBounds(1,10)
            fmt.Printf("%d,",matrix[i][j])
        }
        fmt.Printf("}\n")
    }


    // FIXME: Switch
    // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
    // (Create 3 statements for 3 specific values and a default one)
    a:=1
    switch {
    case a == 1:
        fmt.Printf("a = 1\n")
    case a == 2:
        fmt.Printf("a = 2\n")
    case a == 3:
        fmt.Printf("a = 3\n")
    default:
        fmt.Printf("a is not in [1,3]\n")
    }

    // FIXME: logic Gates
    // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
    // Each function takes two booleans as parameters and returns the result of the logic gate.
    // (or You can do it with a switch and only one function)
    fmt.Printf("T^T= %t\n", LogicGate(true, "XOR", true))
    fmt.Printf("F&&T= %t\n", LogicGate(false, "AND", true))
    fmt.Printf("T||T= %t\n", LogicGate(true, "OR", true))

    // FIXME - Reverse
    // Create a function that reverse a string
    fmt.Println(reverseString(text))

}

func TriForce(){
    fmt.Println("   /\\  ");
    fmt.Println("  /__\\ ");
    fmt.Println(" /\\  /\\  ");
    fmt.Println("/__\\/__\\ ");
    fmt.Println("TRIFORCE");
}

func HelloStr(str string){
    fmt.Printf("Hello %s\n", str)
}

func Addition(a int, b int) int {
    return a + b;
}

func Subtraction(a int, b int) int {
    return a - b;
}

func Multiplication(a int, b int) int {
    return a * b;
}

func Division(a int, b int) int {
    return a / b;
}

func randomInt() int{
    rand.Seed(time.Now().Unix())
    return rand.Intn(65535)
}

func randBounds(lower, upper int) int{
    return rand.Intn(upper - lower) + lower
}

func LogicGate(a bool, gate string, b bool)bool{
    switch {
    case gate == "NO":
        return !a
    case gate == "AND":
        return a&&b
    case gate == "OR":
        return a||b
    case gate == "NAND":
        return !(a&&b)
    case gate == "NOR":
        return !(a||b)
    case gate == "XNOR":
        return !(a!=b)
    case gate == "XOR":
        return a!=b
    default:
        fmt.Printf("Undefined Gate !\n")
    }
    return false
}

func reverseString(str string)string{
    reversed:=""
    length:=len(str)
    for i := 1; i <= length ; i++ {
        reversed+=string(str[length - i])
    }
    return reversed
}