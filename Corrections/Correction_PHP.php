//
//  Correction PHP
//  CCorrection
//
//  Created by Lockf0rc on 10/09/15.
//  Copyright (c) 2015 Lockf0rc. All rights reserved.
//
//  Reviewed by:
//      - No one yet.
//


// Part One:

<?php
    /* START php TAGS so the SERVER Can evaluate the code   "<?php" and the ending  pair is "?>" */

    // FIXME: Declare variables
    // Declare two variables: an integer named "age", and a string named "name" with corresponding values (your name and age)

    $age="22";
    $name="Jhon";
?>

<?php
    // FIXME: Print
    // Print the following sentence in the console "You are NAME and you are AGE years old !". Don't forget to add a newline at the end

    echo "You are $name and you are $age years old!";
  ?>
<?php
    // FiXME: Concatenation
    // Create a new string variable called "hello" which value is "Hello ". Add "name" at the end of "hello" (Concatenation) then print it

    $hello="Hello ".$name; //  dot "." is used for concatenation
?>

<?php
    // FIXME: Array
    // create a new string array called "shoppingList", with three elements of your choice. Create an int variable containing the number of
    // elements in "shoppingList" (using a function of the array/using the array)

    $shoppinglist= array("avocados","cheese","fruitloops");
?>

<?php
    // FIXME: For-loop - Integer
    // Create a simple for-loop for an integer "i" going from 1 to 10 that print the value of "i"

    for($i = 1; $i < 11; $i++)
    {
        echo $i;
    }
?>

<?php
    // FIXME: For-loop - shoppingList
    // Create a for loop that iterate through "shoppingList" and prints each element.

    /* See count function at http://php.net/manual/en/function.count.php */

    $itemsinlist=count($shoppinglist);
    for($i = 0; $i < $itemsinlist; $i++)
    {
        echo $shoppinglist[$i];
    }

?>

<?php
    // FIXME: Foreach-loop
    // Do the same with a foreach-loop.

    foreach($shoppinglist as $key)
    {
      echo $key;
    }
?>

<?php
// FIXME: If-statement
// Modify the first for-loop (with i from 1 to 10) such that it prints "(value of i) is even" when "i" is divisible
// by 2 (You may want to learn more about "modulo" (%)). Else, print "(value of i) is odd".

for($i = 1; $i < 11; $i++)
{
    $isseven = ($i % 2 == 0) ? 1 : 0; /* See Tenery operator  http://www.abeautifulsite.net/how-to-use-the-php-ternary-operator/  */
    if($isseven)
    {
        echo "$i is even";
    }
    else
    {
        echo "$i is odd";
    }
}
?>

<?php
    // FIXME: Sum Up
    // Create a string variable called "element" with the value of your choice. Then create a for-loop that checks if "shoppingList" contains
    // "element". If yes, print "You have to buy (value of element) !", and stop the loop (search how to stop a loop).
    // If not, print "Nope, you don't need (value of "element")".


    $element="Book Case";
    /*  http://php.net/manual/en/control-structures.break.php */
    foreach($shoppingList as $item)
    {
        if($item == $element)
        {
            echo "You have to buy $item !"
            break 2;  /* " break 2;" Exit the first if block then foreach loop code block. */
        }
        else
        {
            echo "Nope, you dont't need $item";
            break 1;  /* break 1  Exit the if statement code block */
        }
    }
?>

<?php
    // Part Two:


    // FIXME: Functions - Ascii
    // Create a function that returns nothing and which doesn't takes any parameter. It should just be named "TriForce"
    // and print the TriForce symbol (one triangle over two other ones, can be found on internet) with "TRIFORCE"
    // Don't forget to call the function !

    /*   http://php.net/manual/en/language.types.string.php */
    function TriForce()
    {
        //  SEE HereDOc  http://www.php.net/manual/en/language.types.string.php#language.types.string.syntax.heredoc
        $string=<<<EOD
               ^
             /  \
            /\  /\
           /__\/__\
           TRIFORCE
          EOD;
          echo $string;
    }
    TriForce();
?>

<?php
    // FIXME: Functions - One parameter
    // Create a function that takes a string as parameter and returns "Hello (value of string) !"

    function Hi($arg)
    {
        echo "Hello $arg !";
    }
    Hi("New value");

    // FIXME: Functions - Multiple parameters
    // Create a function that takes two integers as parameters and returns the addition of these two.
    // You can do the same with multiplication, subtraction and division.

    function sum($n1, $n2)
    {
        return ($n1 + $n2 );
    }

    function diff($n1, $n2)
    {
        return ($n1 - $n2);
    }

    function multi($n1, $n2)
    {
        return ($n1 * $n2);
    }

    function div($n1, $n2)
    {
        return ($n1 / $n2);
    }
?>

<?php
// FIXME: User entry
// Create a string variable that takes what the user enter in the console as value. Then print "You entered (value of string)"

/* PHP is a server side language  and can take user input from HTML FORMS
 NOT SURE FOR:CONSOLE INPUT
 */
?>

<!-- // HTML DOCUMENT WITH FORM -->
<!document html>
<html>
<body>
  <form method="post" action="Corrections_php.php">
     <input type="text" name="anyvaluename_inHTMLFORM">
    <input type="submit">
</body>
</form>
</html>
<!--END OF HTML -->

<?php
    // process HTML DOCUMENT WITH FORM
    /*$_POST IS A GLOBAL ARRAY.You can post data via html form.
    Note the name="???" you used in  the input tag and use the post array to retrve it.

    REF: http://php.net/manual/en/reserved.variables.post.php
    */
    $INPUT = $_POST['anyvaluename_inHTMLFORM'];
    echo $INPUT;
?>

<?php
    // FIXME: While loop
    // Create a while loop that takes a number and divides it by 2 until it is less than 3

    /* Reference  http://php.net/manual/en/language.operators.assignment.php
          $a /= $b     $a = $a / $b    Division
    */

    while($num < 3)
    {
      $num /= 2;
    }
?>

<?php
    // FIXME: do-While loop
    // Do the same with a do-while loop
    do {
         $num /=2;
       }while($num < 3);
?>

<?php
    // FIXME: Random generator
    // Create a function that returns a random number

    //  http://php.net/manual/en/function.rand.php
    function rn()
    {
      return rand();
    }
    rn();
?>

<?php
    // FIXME: Random generator with bounds
    // Create another function that returns a random number between two bounds given as parameters.
    function rnn($start, $end)
    {
        return rand($start, $end);
    }
    rnn(1,100);
?>

<?php
    // FIXME: Multidimensional array
    // Create a two dimensional int array of 3 columns and 3 rows. Use 2 for-loops to add a random number
    // between 1 and 9 in each of the 9 rooms.
    // You may use one of the two previously created function.
    // Then print them such that they appear like this (with [x1,x9] being the 9 random integers):
    // {x1,x2,x3,}
    // {x4,x5,x6,}
    // {x7,x8,x9,}

    $c1=array(rnn(1,1000), rnn(1,1000), rnn(1,1000));
    $c2=array(rnn(1,1000), rnn(1,1000), rnn(1,1000));
    $c3=array(rnn(1,1000), rnn(1,1000), rnn(1,1000));
    $box= array($c1, $c2, $c3);

    foreach($box as list($col1, $col2, $col3))
    {
        echo "[$col1, $col2, $col3]";
    }
    ?>

<?php
    // FIXME: Switch
    // Create a Switch that takes an integer "a" and return a sentence regarding the value of a
    // (Create 3 statements for 3 specific values and a default one)

    $a = 10;
    switch($a)
    {
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
?>

<?php
    // FIXME: logic Gates
    // Create 7 functions for each logic gates (And, Or, No, Nand, Nor, Xnor, Xor).
    // Each function takes two booleans as parameters and returns the result of the logic gate.
    // (or You can do it with a switch and only one function)

    //AND
    function cmpAND($a, $b)
    {
        $result = ($a && $b);
        return $result;
    }

    //OR
    function cmpOR($a, $b)
    {
        $result = ($a || $b);
        return $result;
    }

    //XOR
    function cmpXOR($a, $b)
    {
        $result = ($a xor $b);
        return $result;
    }

    //NOT
    function cmpNOT($a)
    {
        $result = !$a;
        return $result;
    }

    //NAND
    function cmpNAND($a, $b)
    {
        $result = !($a && $b);
        return $result;
    }

    //NOR
    function cmpNOR($a, $b)
    {
        $result = !($a || $b);
        return $result;
    }

    //XNOR
    function cmpXNOR($a, $b)
    {
        $result =! ($a xor $b);
        return $result;
    }
?>

<?php
    // FIXME - Reverse
    // Create a function that reverse a string

    /* http://php.net/manual/en/function.strrev.php */
    echo strrev("Hello world!"); // outputs !dlrow olleH
?>
