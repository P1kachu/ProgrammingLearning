//  How to practice a language !

//  Here are some exercises to help you improving your skills in any programming language.
//  The purpose of this exercise sheet is to allow anybody learning a new language to practise. Exercises are ordered by difficulty.
//  The exercises are taken from practical session of EPITA's first year.
//  Document will be updated with new exercises and corrections are available for some languages.
//  Since I am far from knowing every programming language, some exercise may not be as easy as they could be.
//  Feel free to send me corrections for languages that are not available yet,
//  new exercises ideas or any mistakes that I could have made !
//  Nothing will be clearly explained, you will just have exercises and corrections.
//  You need to look for answers on the internet (stackoverflow.com is good for example) and search by yourself.
//  Tutorials are available all around the internet, but searching by yourself helps you learning about things
//  you were not looking for !
//  Good luck :)

//  Create a new project for the language you want to learn and add this file with the 
//  right extension (.c for c, .cpp for C++, .cs for C#, etc.) regarding the language.
//  You will need to add the corresponding headers/library/etc.



// Part One:


// FIXME: Declare variables
// Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)

  $age="22"; $name="Jhon";

// FIXME: Print
// Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end
  
  echo "You are $name and you are $age years old!";
  
// FiXME: Concatenation
// Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it

$hello="hello";

// FIXME: Array
// create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
// elements in "shoppingList" (using a function of the array/using the array)

$shoppinglist= array("avocados","cheese","fruitloops");

// FIXME: For-loop - Integer
// Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"

for($i=1;$i<11;$i++){
echo $i;
}

// FIXME: For-loop - shoppingList
// Create a for loop that iterate through "shoppingList" and prints each element.

for($i=0;$i<count($shoppinglist);$i++){
  echo $shoppinglist[$i];
}

// FIXME: Foreach-loop
// Do the same with a foreach-loop.

foreach($shoppinglist as $key){
echo $key


// FIXME: If-statement
// Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
// by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".

for($i=1;$i<11;$i++){
$isseven=($i%2==0)?1:0;
  if($isseven){
  echo "(value of $i) is even";
  }else{
  echo "(value of $i) is odd";
  }
}

// FIXME: Sum Up
// Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains 
// "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
// If not, print "Nope, you don't need (value of "element")".


$element="Book Case";

foreach($shoppingList as $item){
  if($item == $element){
  echo "You have to buy ( value of $item )!"
  }else{
    echo "Nope, you dont't need (value of $item );
  }
}


// Part Two:


// FIXME: Functions - Ascii
// Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
// and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
// Don't forget to call the function !

/*   http://php.net/manual/en/language.types.string.php */
function TriForce(){

$string= <<<EOD
     ^  
   /  \ 
  /\  /\
 /  \/  \
 _________
EOD;

echo $string;
}

TriForce();

// FIXME: Functions - One parameter
// Create a function that takes a string as parameter and returns "Hello (value of string) !"

function Hi($arg){
echo "Hello ($arg of string)";
}
Hi("New value");

// FIXME: Functions - Multiple parameters
// Create a function that takes two integers as parameters and returns the addition of these two.
// You can do the same with multiplication, subtraction and division.

function sum($n1,$n2){
return $n1 + $n2;
}
function diff($n1, $n2){
return $n1- $n2 ;
}
function multi($n1,$n2){
return $n1 * $n2;
}
function div($n1,$n2){
return $n1 / $n2 ;
}

// FIXME: User entry
// Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"

// FIXME: While loop
// Create a while loop that takes a number and divides it by 2 until it is less than 3

// FIXME: do-While loop
// Do the same with a do-while loop

// FIXME: Random generator
// Create a function that returns a random number

//  http://php.net/manual/en/function.rand.php
function rn(){
return rand();
}
rn();

// FIXME: Random generator with bounds
// Create another function that returns a random number between two bounds given as parameters.
function rnn($start,$end){
return rand($start, $end);
}
rnn(1,100);

// FIXME: Multidimensional array
// Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
// between 1 and 9 in each of the 9 rooms.
// You may use one of the two previously created function.
// Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
// {x1,x2,x3,}
// {x4,x5,x6,}
// {x7,x8,x9,}

$c1=array(rnn(1,1000),rnn(1,1000),rnn(1,1000));
$c2=array(rnn(1,1000),rnn(1,1000),rnn(1,1000));
$c3=array(rnn(1,1000),rnn(1,1000),rnn(1,1000));
$box= array($c1,$c2,$c3);

foreach($box as list($col1,$col2,$col3))
{
echo "[$col1,$col2,$col3]";
}
// FIXME: Switch
// Create a Switch that takes an integer "a" and return a sentence regarding the value of a
// (Create 3 statements for 3 specific values and a default one)

$a=10;
switch($a){
case (5 <= $a):
  echo "value is greater or equal to 5";
break;
case (8 <= $a) :
  echo "value is greater or equal to 8";
break;
case (12 <= $a):
  echo "value is greater or equal to 12";
  break;
default : echo "UNKNOWN";  
}


// FIXME: logic Gates
// Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
// Each function takes two booleans as parameters and returns the result of the logic gate.
// (or You can do it with a switch and only one function)

//AND
function cmpAND($a,$b){ 
$result=($a && $b);
return $result;
}
//OR
function cmpOR($a,$b){
$result=($a || $b);
return $result;
}
//XOR
function cmpXOR($a,$b){
$result=($a xor $b);
return $result;
}
//NOT

//NAND
function cmpNAND($a,$b){
$result=!($a && $b);
return $result;
}
//
function cmpNOR($a,$b){
$result=!($a || $b);
return $result;
}

function cmpXNOR($a,$b){
$result=!($a xor $b);
return $result;
}



// FIXME - Reverse
// Create a function that reverse a string


echo strrev("Hello world!"); // outputs !dlrow olleH


