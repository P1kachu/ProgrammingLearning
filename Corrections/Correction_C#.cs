//
//  CSharpCorrection.cs
//  CSharpCorrection
//
//  Created by P1kachu on 15/09/14.
//  Copyright (c) 2014 P1kachu. All rights reserved.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CSharpCorrection
{
    class CSharpCorrection
    {
        static void Main(string[] args)
        {

            // Part One:


            // FIXME: Declare variables
            // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
            string name = "Stan";
            int age = 19;

            // FIXME: Print
            // Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
            Console.WriteLine("You are {0} and you are {1} years old !", name, age);
            //or 
            Console.Write("You are {0} and you are {1} years old ! {2}", name, age, Environment.NewLine);

            // FiXME: Concatenation
            // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
            string hello = "Hello ";
            hello += name;
            Console.WriteLine(hello);

            // FIXME: Array
            // create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
            // elements in "shoppingList" (using a function of the array/using the array)
            string[] shoppingList = { "milk", "a Chevy Camaro", "a life" };
            int nbOfElements = shoppingList.Length;

            // FIXME: For-loop - Integer
            // Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
            for (int i = 1; i <= 10; i++)
            {
                Console.WriteLine(i);
            }

            // FIXME: For-loop - shoppingList
            // Create a for loop that iterate through "shoppingList" and prints each element.
            for (int j = 0; j < nbOfElements; j++)
            {
                Console.WriteLine(shoppingList[j]);
            }

            // FIXME: Foreach-loop
            // Do the same with a foreach-loop.
            foreach (string elt in shoppingList)
            {
                Console.WriteLine(elt);
            }

            // FIXME: If-statement
            // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
            // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".  
            for (int i = 1; i <= 10; i++)
            {
                if (i % 2 == 0)
                {
                    Console.WriteLine("{0} is even", i);
                }
                else
                {
                    Console.WriteLine("{0} is odd", i);
                }
            }

            // FIXME: Sum Up
            // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains 
            // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
            // If not, print "Nope, you don't need (value of "element")".   
            string element = "a life";
            for (int i = 0; i < nbOfElements; i++)
            {
                var currentElm = shoppingList[i];
                if (element == currentElm)
                {
                    Console.WriteLine("You have to buy {0} !", currentElm);
                    break;
                }
                else
                {
                    Console.WriteLine("Nope, you don't need {0} !", currentElm);
                }
            }



            // Part Two:


            // FIXME: Functions - Ascii
            // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
            // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
            // Don't forget to call the function !
            TriForce();


            // FIXME: Functions - One parameter
            // Create a function that takes a string as parameter and returns "Hello (value of string) !"
            Console.WriteLine(Hello("Stan"));

            // FIXME: Functions - Multiple parameters
            // Create a function that takes two integers as parameters and returns the addition of these two.
            // You can do the same with multiplication, subtraction and division.
            Console.WriteLine(Addition(5, 12));
            Console.WriteLine(Subtraction(5, 12));
            Console.WriteLine(Multiplication(5, 12));
            Console.WriteLine(Division(5, 12)); // returns 0 because "a" and "b" are Integers (no point)
            Console.WriteLine(Division(10, 2));

            // FIXME: User entry
            // Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
            string userInput;
            userInput = Console.ReadLine();
            Console.WriteLine("You entered {0}", userInput);

            // FIXME: While loop
            // Create a while loop that takes a number and divides it by 2 until it is less than 3
            int number = 56;
            while (number > 3)
            {
                number /= 2;
                Console.WriteLine(number);
            }

            // FIXME: do-While loop
            // Do the same with a do-while loop
            int number2 = 86;
            do
            {
                number2 /= 2;
                Console.WriteLine(number2);
            } while (number2 > 3);

            // FIXME: Random generator
            // Create a function that returns a random number
            Console.WriteLine(rnd());
            Console.WriteLine(rnd());

            // FIXME: Random generator with bounds
            // Create another function that returns a random number between two bounds given as parameters.
            Console.WriteLine(rnd(2, 26));
            Console.WriteLine(rnd(2, 26));

            // FIXME: Multidimensional array
            // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
            // between 1 and 9 in each of the 9 rooms.
            // You may use one of the two previously created function.
            // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
            // {x1,x2,x3,}
            // {x4,x5,x6,}
            // {x7,x8,x9,}
            int[][] multiArray = new int[3][];

            for (int i = 0; i < multiArray.Length; i++)
            {
                multiArray[i] = new int[3];
            }

            for (int i = 0; i < multiArray.Length; i++)
            {
                for (int j = 0; j < multiArray[i].Length; j++)
                {
                    multiArray[i][j] = rnd(0, 10);
                }
            }

            for (int i = 0; i < multiArray.Length; i++)
            {
                Console.Write("{");

                for (int j = 0; j < multiArray[i].Length; j++)
                {
                    Console.Write(multiArray[i][j] + ",");
                }

                Console.WriteLine("}");
            }

            Console.Read(); //force the Console to wait before closing
        }

        static void TriForce()
        {
            Console.WriteLine(@"
   /\
  /__\ 
 /\  /\ 
/__\/__\  
TRIFORCE"
);
           
        }

        static string Hello(string name)
        {
            return string.Format("Hello {0} !{1}", name, Environment.NewLine);
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
            if (b == 0)
            {
                throw new ArgumentOutOfRangeException(string.Format("{0} must not be zero", nameof(b)));
            }
            return a / b;
        }

        static readonly Random rand = new Random();
        static int rnd()
        {
            return rand.Next();
        }


        static int rnd(int min, int max)
        {
            if (min > max)
            {
                throw new ArgumentOutOfRangeException(string.Format("{0} must be inferior to {1}", nameof(min), nameof(max)));
            }

            return rand.Next(min, max + 1);
        }
    }
}
