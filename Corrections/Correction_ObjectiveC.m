//
//  Objective-C Correction
//
//  Created by Zane Helton on 11/13/15.
//  Copyright (c) 2015 Zane Helton. All rights reserved.
//
//  Reviewed by:
//	  - No one yet.
//

#import <Foundation/Foundation.h>
@interface Correction : NSObject
@end

@implementation Correction
// Part Two:

// FIXME: Functions - Ascii
// Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
// and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
// Don't forget to call the function !
- (void)printTriForce {
	/*
	 although this doesn't follow the instructions,
	 verbose method names in ObjC are conventional.
	*/
	NSLog(@"   /\\  ");
	NSLog(@"  /__\\ ");
	NSLog(@" /\\  /\\  ");
	NSLog(@"/__\\/__\\ ");
	NSLog(@"TRIFORCE");
}

// FIXME: Functions - One parameter
// Create a function that takes a string as parameter and returns "Hello (value of string) !"
- (void)printNameWithName:(NSString *)name {
	NSLog(@"Hello %@!", name);
}

// FIXME: Functions - Multiple parameters
// Create a function that takes two integers as parameters and returns the addition of these two.
// You can do the same with multiplication, subtraction and division.
- (int)addIntegersWithFirstInt:(int)firstNumber secondInt:(int)secondNumber {
	return firstNumber + secondNumber;
}

- (int)multiplyIntegersWithFirstInt:(int)firstNumber secondInt:(int)secondNumber {
	return firstNumber * secondNumber;
}

- (int)subtractIntegersWithFirstInt:(int)firstNumber secondInt:(int)secondNumber {
	return firstNumber - secondNumber;
}

- (int)divideIntegersWithFirstInt:(int)firstNumber secondInt:(int)secondNumber {
	return firstNumber / secondNumber;
}

// FIXME: Random generator
// Create a function that returns a random number
- (float)generateRandomNumber {
	return arc4random();
}

// FIXME: Random generator with bounds
// Create another function that returns a random number between two bounds given as parameters.
- (float)generateRandomNumberWithLowerBound:(float)lowerBound upperBound:(float)upperBound {
	return arc4random_uniform(upperBound) + lowerBound;
}

- (BOOL)andGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return firstBool && secondBool;
}

- (BOOL)orGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return firstBool || secondBool;
}

- (BOOL)noGateWithBool:(BOOL)onlyBool {
	return !onlyBool;
}

- (BOOL)nandGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return !(firstBool && secondBool);
}

- (BOOL)norGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return !(firstBool || secondBool);
}

- (BOOL)xorGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return ((firstBool && secondBool) || (firstBool && secondBool));
}

- (BOOL)xnorGateWithFirstBool:(BOOL)firstBool secondBool:(BOOL)secondBool {
	return ((firstBool || secondBool) && (firstBool || secondBool));
}

- (NSString *)reverseString:(NSString *)string {
    int len = [string length];
    NSMutableString *reverseString = [[NSMutableString alloc] initWithCapacity:len];
    for(int i = len - 1; i >= 0; i--) {
        [reverseString appendString:[NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
    }
    return reverseString;
}

int main (int argc, const char * argv[]) {
   @autoreleasepool {
       Correction *correction = [[Correction alloc] init];
	   // Part One:

	   // FIXME: Declare variables
	   // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)
	   int age = 15;
	   NSString *name = @"Zane";

	   // FIXME: Print
	   // Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
	   NSLog(@"You are %@ and you are %i years old!", name, age);

	   // FIXME: Concatenation
	   // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it
	   NSString *hello = @"Hello ";
	   hello = [hello stringByAppendingString:name];
	   NSLog(@"%@", hello);

	   // FIXME: Array
	   // create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
	   // elements in "shoppingList" (using a function of the array/using the array)
	   NSArray *shoppingList = @[@"Eggs", @"Milk", @"Bread"];
	   __unused int shoppingListCount = [shoppingList count];

	   // FIXME: For-loop - Integer
	   // Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"
	   for (int i = 1; i <= 10; i++) {
		   NSLog(@"%i", i);
	   }

	   // FIXME: For-loop - shoppingList
	   // Create a for loop that iterate through "shoppingList" and prints each element.
	   for (int i = 0; i < shoppingList.count; i++) {
		   NSLog(@"%@", shoppingList[i]);
	   }

	   // FIXME: Foreach-loop
	   // Do the same with a foreach-loop.
	   for (NSString *item in shoppingList) {
		   NSLog(@"%@", item);
	   }

	   // FIXME: If-statement
	   // Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
	   // by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".
	   for (int i = 1; i <= 10; i++) {
		   if (i % 2 == 0) {
			   NSLog(@"%i is even", i);
		   } else {
			   NSLog(@"%i is odd", i);
		   }
	   }

	   // FIXME: Sum Up
	   // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
	   // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
	   // If not, print "Nope, you don't need (value of "element")".
	   NSString *element = @"Bread";
	   for (int i = 0; i < shoppingList.count; i++) {
		   if ([element isEqualToString:shoppingList[i]]) {
			   NSLog(@"You have to buy %@!", shoppingList[i]);
			   break;
		   } else {
			   NSLog(@"Nope, you don't need %@", shoppingList[i]);
		   }
	   }

	   [correction printTriForce];
	   [correction printNameWithName:@"Zane"];

	   // FIXME: User entry
	   // Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"
	   char userInput[100];
	   NSLog(@"Input: ");
	   scanf("%s", userInput);
	   NSLog(@"You entered %s", userInput);

	   // FIXME: While loop
	   // Create a while loop that takes a number and divides it by 2 until it is less than 3
	   int number = 100;
	   while (number > 3) {
		   number /= 2;
	   }

	   // FIXME: do-While loop
	   // Do the same with a do-while loop
	   number = 100;
	   do {
		   number /= 2;
	   } while (number > 3);

	   // FIXME: Multidimensional array
	   // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
	   // between 1 and 9 in each of the 9 rooms.
	   // You may use one of the two previously created function.
	   // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
	   // {x1,x2,x3,}
	   // {x4,x5,x6,}
	   // {x7,x8,x9,}
       int size = 3;
       int multidimensionalArray[3][3] = {{0}};
       for (int i = 0; i < size; i++){
           for (int j = 0; j < size; j++){
               multidimensionalArray[i][j] = [correction generateRandomNumberWithLowerBound:1 upperBound:10];
           }
       }

       for (int i = 0; i < size; i++){
           printf("{");
           for (int j = 0; j < size; j++){
               printf("%i,", multidimensionalArray[i][j]);
           }
           printf("}\n");
       }

	   // FIXME: Switch
	   // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
	   // (Create 3 statements for 3 specific values and a default one)
	   int a = 3;
	   switch (a) {
		   case 0:
				NSLog(@"'a' is equal to 0");
				break;
		   case 1:
				NSLog(@"'a' is equal to 1.");
				break;
		   case 2:
				NSLog(@"'a' is equal to 2.");
				break;
		   default:
				NSLog(@"'a' is not equal to 0, 1, or 2.");
	   }

	   // FIXME: logic Gates
	   // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
	   // Each function takes two booleans as parameters and returns the result of the logic gate.
	   // (or You can do it with a switch and only one function)
       [correction andGateWithFirstBool:YES secondBool:YES];
       [correction orGateWithFirstBool:YES secondBool:NO];
       [correction noGateWithBool:NO];
       [correction nandGateWithFirstBool:YES secondBool:NO];
       [correction norGateWithFirstBool:YES secondBool:YES];
       [correction xorGateWithFirstBool:NO secondBool:NO];
       [correction xnorGateWithFirstBool:NO secondBool:YES];

	   // FIXME - Reverse
	   // Create a function that reverse a string
       [correction reverseString:@"Zane Helton"];
	}
	return 0;
}

@end