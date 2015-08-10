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
        String[] shoppingList = {"Tea","Raspberry","Pi"};
        int nbOfElts = shoppingList.length;

        // FIXME: For-loop - Integer
        // Create a simple for-loop for an integer "i" going from 1 to 10 that prints the value of "i"
        for (int i = 1; i <11; i++)
            System.out.println(i);

        // FIXME: For-loop - shoppingList
        // Create a for loop that iterate through "shoppingList" and prints each element.
        for (int i = 0; i <nbOfElts; i++)
            System.out.println(shoppingList[i]);


        // FIXME: Foreach-loop
        // Do the same with a foreach-loop.
        for (String item : shoppingList)
            System.out.println(item);

        // FIXME: If-statement
        // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
        // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
        for (int i = 1; i <11; i++)
        {
            if(i%2==0)
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
            if (shoppingList[i] == element)
                tmp = 1;
        if (tmp == 1)
            System.out.println("You have to buy "+element+" !");
        else
            System.out.println("Nope, you don't need "+element);


        // Part Two:


        // FIXME: Functions - Ascii
        // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
        // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
        // Don't forget to call the function !
        TriForce();

        // FIXME: Functions - One parameter
        // Create a function that takes a string as parameter and returns "Hello (value of string) !"
        System.out.println(Hello("Luke"));

        // FIXME: Functions - Multiple parameters
        // Create a function that takes two integers as parameters and returns the addition of these two.
        // You can do the same with multiplication, subtraction and division.
        System.out.println(Addition(18,24));
        System.out.println(Division(336,8));
        System.out.println(Multiplication(21,2));
        System.out.println(Subtraction(44,2));

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
            nb/=2;
        }

        // FIXME: do-While loop
        // Do the same with a do-while loop
        nb = 100;
        do
        {
            System.out.println(nb);
            nb/=2;
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
        int[][] array = new int[3][3];
        for (int i = 0; i < 3; i++)
            for (int j = 0; j < 3; j++)
                array[i][j] = randIntBounds(0,9);


        for (int i = 0; i < 3; i++)
        {
            System.out.print("{");
            for (int j = 0; j < 3; j++)
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
        System.out.println(LogicGate("true",0,"false"));

        // FIXME - Reverse
        // Create a function that reverse a string
        System.out.println(reverseString("Hello!"));
    }

        //Functions Declarations

        static void TriForce()
        {
            System.out.println("   /\\  ");
            System.out.println("  /__\\ ");
            System.out.println(" /\\  /\\  ");
            System.out.println("/__\\/__\\ ");
            System.out.println("TRIFORCE");
        }

        static String Hello(String name)
        {
            return "Hello " + name + " !\n";
        }
        static int Addition(int a, int b)
        {
            return a + b;
        }

        static int Subtraction(int a, int b)
        {
            return a - b;
        }

        static int Multiplication(int a, int b)
        {
            return a * b;
        }

        static int Division(int a, int b)
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

        static boolean LogicGate(String left, int door, String right)
        {
            boolean a;
            boolean b;

            if ( left == "true")
            a = true;
            else a = false;

            if ( right == "true")
            b = true;
            else b = false;


            switch (door)
            {
                case 0:
                    return And(a, b);
                case 1:
                    return Or(a, b);
                case 2:
                    return No(a);
                case 3:
                    return Nand(a, b);
                case 4:
                    return Nor(a, b);
                case 5:
                    return Xor(a, b);
                case 6:
                    return Xnor(a, b);


                default:
                return false;
            }
        }

        static boolean And(boolean a, boolean b)
        {
            if (a == true && b == true)
            return true;
            else
            return false;
        }


        static boolean Or(boolean a, boolean b)
        {
            if (a == true || b == true)
            return true;
            else
            return false;
        }


        static boolean No(boolean a)
        {
            if (a == true)
            return false;
            else
            return true;
        }


        static boolean Nand(boolean a, boolean b)
        {
            if (a == true && b == true)
            return false;
            else
            return true;
        }


        static boolean Nor(boolean a, boolean b)
        {
            if (a == false && b == false)
            return true;
            else
            return false;
        }

        static boolean Xor(boolean a, boolean b)
        {
            if ((a == true && b == false) || (a == false && b == true))
            return true;
            else
            return false;
        }

        static boolean Xnor(boolean a, boolean b)
        {
            if ((a == true && b == false) || (a == false && b == true))
            return false;
            else
            return true;
        }

        static String reverseString(String str)
        {
            char[] array = str.toCharArray();
            String stringy = "";
            for (int i = str.length() - 1; i>=0; i--)
                stringy += array[i];
            return stringy;
        }
}
