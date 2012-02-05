# LAB 2: Wondrous Number Sequence

## Goals

* Learn about arrays and hashes in Ruby

## Lab

### Part 1 -- Basic Functionality

Write a function that tacks a positive integer n and returns the
wondrous sequence for n.

Examples:

     wondrous_sequence(5)  # => [5, 16, 8, 4, 2, 1]

#### Hint -- Source for <code>wondrous\_sequence</code> (click to view)

%hideon

<pre>
def wondrous_sequence(n)
  result = []
  i = n
  loop do
    result << i
    break if i == 1
    if (i%2) == 0
      i = i/2
    else
      i = 3*i + 1
    end
  end
  result
end
</pre>

%hideoff

### Part 2 -- Optimization

Suppose we are asked to calculate the wondrous sequence for 5, we
would get [5, 16, 8, 4, 2, 1].  Now suppose we are asked for the
wondrous sequence for 10.  After the first step we get 5, but we
already know the value of 5's sequence (since we just got done
calculating it).

Write an optimized version of wondrous_sequence that remembers prior
calls and uses that to avoid generating the entire sequence from
scratch.

#### Hint -- Use a cache (click to view)

%hideon

You will need to remember sequences you have seen before.  Perhaps a
global Hash (maybe called CACHE) would be helpful.

    CACHE = {}

Then in you code, whenever you calculate a wondrous sequence, store it
in the cache.

%hideoff

#### Hint -- Source for Wondrous Number Sequence Specification (click to view)

%hideon

%code "labs/lab02/solution/wondrous_sequence_spec.rb"

%hideoff

#### Hint -- Source for Wondrous Number Sequence (click to view)

%hideon

%code "labs/lab02/solution/wondrous_sequence.rb"

%hideoff

<hr>
[Back to Index](index.html)
