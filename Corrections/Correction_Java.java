//
//  JavaCorrection.java
//  JavaCorrection
//
//  Created by P1kachu on 07/02/15.
//  Copyright (c) 2015 P1kachu. All rights reserved.

import java.util.Scanner; // For user input
import java.util.Random;
class JavaCorrection
{
    public static void main(String args[])
    {

        // Part One:


        // FIXME: Declare variables
        // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
        int age = 20;
        String name = "Darth Vader";

        // FIXME: Print
        // Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end if required
        System.out.println("You are " + name + " and you are " + age + " years old !");

        // FiXME: Concatenation
        // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
        String hello = "Hello ";
        hello += name;
        System.out.println(hello);

        // FIXME: Array
        // create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
        // elements in "shoppingList" (using a function of the array/using the array)
        String[] shoppingList = { "Tea","Raspberry","Pi" };
        int nbOfElts = shoppingList.length;

        // FIXME: For-loop - Integer
        // Create a simple for-loop for an integer "i" going from 1 to 10 that prints the value of "i"
        for (int i = 1; i < 11; i++)
            System.out.println(i);

        // FIXME: For-loop - shoppingList
        // Create a for loop that iterate through "shoppingList" and prints each element.
        for (int i = 0; i < nbOfElts; i++)
            System.out.println(shoppingList[i]);


        // FIXME: Foreach-loop
        // Do the same with a foreach-loop.
        for (String item : shoppingList)
            System.out.println(item);

        // FIXME: If-statement
        // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
        // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
        for (int i = 1; i < 11; i++)
        {
            if(i % 2 == 0)
                System.out.println(i + " is even");
            else
                System.out.println(i + " is odd");
        }
        // FIXME: Sum Up
        // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
        // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
        // If not, print "Nope, you don't need (value of "element")".
        String element = "Pi";
        int tmp = 0;
        for (int i = 0; i < nbOfElts; i++)
            if (shoppingList[i].equals(element))
                tmp = 1;
        if (tmp)
            System.out.println("You have to buy " + element + " !");
        else
            System.out.println("Nope, you don't need " + element);


        // Part Two:


        // FIXME: Functions - Ascii
        // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
        // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
        // Don't forget to call the function !
        triForce();

        // FIXME: Functions - One parameter
        // Create a function that takes a string as parameter and returns "Hello (value of string) !"
        System.out.println(hello("Luke"));

        // FIXME: Functions - Multiple parameters
        // Create a function that takes two integers as parameters and returns the addition of these two.
        // You can do the same with multiplication, subtraction and division.
        System.out.println(addition(18,24));
        System.out.println(division(336,8));
        System.out.println(multiplication(21,2));
        System.out.println(subtraction(44,2));

        // FIXME: User input
        // Create a string variable that takes what the user enters in the console as value. Then print "You entered (value of string)"
        Scanner user_input = new Scanner(System.in);
        String user_inputS = user_input.next();
        System.out.println("You entered " + user_inputS);

        // FIXME: While loop
        // Create a while loop that takes a number and divides it by 2 until it is less than 3
        int nb= 100;
        while(nb >= 3)
        {
            System.out.println(nb);
            nb /= 2;
        }

        // FIXME: do-While loop
        // Do the same with a do-while loop
        nb = 100;
        do
        {
            System.out.println(nb);
            nb /= 2;
        }while(nb >= 3);

        // FIXME: Random generator
        // Create a function that returns a random number
        randInt();

        // FIXME: Random generator with bounds
        // Create another function that returns a random number between two bounds given as parameters.
        randIntBounds(0,5);

        // FIXME: Multidimensional array
        // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
        // between 1 and 9 in each of the 9 rooms.
        // You may use one of the two previously created function.
        // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
        // {x1,x2,x3,}
        // {x4,x5,x6,}
        // {x7,x8,x9,}
        int size = 3;
        int[][] array = new int[size][size];
        for (int i = 0; i < size; i++)
            for (int j = 0; j < size; j++)
                array[i][j] = randIntBounds(0,9);


        for (int i = 0; i < size; i++)
        {
            System.out.print("{");
            for (int j = 0; j < size; j++)
                System.out.print(array[i][j] + ",");
            System.out.println("}");
        }

        // FIXME: Switch
        // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
        // (Create 3 statements for 3 specific values and a default one)
        int a = Integer.parseInt(user_input.next());

        switch(a)
        {
            case 1 :
            System.out.println("a = 1");
            break;

            case 2 :
            System.out.println("a = 2");
            break;

            case 3 :
            System.out.println("a = 3");
            break;

            default :
            System.out.println("a != 1/2/3\n");
            break;
        }

        // FIXME: logic Gates
        // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
        // Each function takes two booleaneans as parameters and returns the result of the logic gate.
        // (or You can do it with a switch and only one function)
        System.out.println(logicGate("true",0,"false"));

        // FIXME - Reverse
        // Create a function that reverse a string
        System.out.println(reverseString("Hello!"));
    }

        //Functions Declarations

        static void triForce()
        {
            System.out.println("   /\\  ");
            System.out.println("  /__\\ ");
            System.out.println(" /\\  /\\  ");
            System.out.println("/__\\/__\\ ");
            System.out.println("TRIFORCE");
        }

        static String hello(String name)
        {
            return "Hello " + name + " !\n";
        }
        static int addition(int a, int b)
        {
            return a + b;
        }

        static int subtraction(int a, int b)
        {
            return a - b;
        }

        static int multiplication(int a, int b)
        {
            return a * b;
        }

        static int division(int a, int b)
        {
            return a / b;
        }


        public static int randInt()
        {
            Random rand = new Random();
            int randomNum = rand.nextInt(Integer.MAX_VALUE);
            return randomNum;
        }

        public static int randIntBounds(int min, int max)
        {
            Random rand = new Random();
            int randomNum = rand.nextInt((max - min) + 1) + min;
            return randomNum;
        }

        static boolean logicGate(String left, int door, String right)
        {
            boolean a;
            boolean b;

            if (left.equals("true"))
            a = true;
            else a = false;

            if (right.equals("true"))
            b = true;
            else b = false;


            switch (door)
            {
                case 0:
                    return and(a, b);
                case 1:
                    return or(a, b);
                case 2:
                    return no(a);
                case 3:
                    return nand(a, b);
                case 4:
                    return nor(a, b);
                case 5:
                    return xor(a, b);
                case 6:
                    return xnor(a, b);


                default:
                return false;
            }
        }

        static boolean and(boolean a, boolean b)
        {
            if (a && b)
                return true
            else
                return false
            // return (a && b)
        }


        static boolean or(boolean a, boolean b)
        {
            if (a || b)
                return true
            else
                return false
            // return (a || b)
        }


        static boolean no(boolean a)
        {
            if (a)
                return false
            else
                return true
            // return (!a)
        }


        static boolean nand(boolean a, boolean b)
        {
            if (a && b)
                return false
            else
                return true
            // return !(a && b)
        }


        static boolean nor(boolean a, boolean b)
        {
            if (a && b)
                return true
            else
                return false
            // return !(a || b)
        }

        static boolean xor(boolean a, boolean b)
        {
            if ((a && b) || (a && b))
                return true
            else
                return false
            // return ((a && b) || (a && b))
        }

        static boolean xnor(boolean a, boolean b)
        {
            if ((a && b) || (a && b))
                return false
            else
                return true
            // return !((a && b) || (a && b))
        }

        static String reverseString(String str)
        {
            char[] array = str.toCharArray();
            String stringy = "";
            for (int i = str.length() - 1; i >= 0; i--)
                stringy += array[i];
            return stringy;
        }
}
