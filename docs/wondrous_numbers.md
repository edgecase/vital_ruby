# LAB 1: Wondrous Numbers

## Goals

* Learn how to create a stand-alone Ruby script.
* Learn how to write simple methods/functions.

## Discussion

Consider the following rule for a number n:

* If n is even, then divide it by 2.
* If n is odd, then multiply it by 3 and add 1.

By repeating the rule over and over, you can generate a sequence of
numbers using the given rule.  Stop if the sequence reaches 1.

For example, starting with 5:

    5, 16, 8, 4, 2, 1

Another example, staring with 7:

    7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1

Wondrous numbers will generate a sequence that eventually ends with 1.

## Lab

For this assignment,

1. Write a function wondrous?(n) that takes a positive integer n and
   returns true if the number is wondrous, and false if it is
   not-wondrous.

1. Write some top level code that reads a number from standard input,
   calls wondrous?(n) and displays the results.

#### Hint -- Specs for Wondrous Numbers (click to view)

%hideon

%code "labs/lab01/solution/wondrous_spec.rb"

%hideoff

#### Hint -- Source for the <code>next\_in\_sequence?</code> method (click to view)

%hideon

The spec concentrates on the <code>next\_in\_sequence</code> method,
because that's where most of the logic goes.

%code "labs/lab01/solution/wondrous.rb", next

%hideoff

#### Hint -- Source for the <code>wondrous?</code> method (click to view)

%hideon

%code "labs/lab01/solution/wondrous.rb", wondrous

%hideoff

#### Hint -- Source for Wondrous Number Main Program (click to view)

%hideon

Here's the main program for the wondrous number lab.

%code "labs/lab01/solution/wondrous.rb", main

%hideoff

<hr>
[Back to Index](index.html)
