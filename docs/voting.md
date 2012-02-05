# LAB 4: Vote Tallies

## Goals

* Learn how to read and write files
* Learn how to use regular expressions to split text

## Discussion

It's time to tally up the votes.  There are two data files to be used
with this assignment.  The "presentations.txt" file contains a list of
presentations that have been submitted to the selection committee.
The file "votes.txt" contains a list of the selection committee's
votes against all the presentations.

For this assignment,

* Read the file "presentations.txt" and create a presentation object
  for each line of the file (see below for the line format).
* Read the file "votes.txt" and apply the votes to each of the
  presentations.
* Display the presentations with an average score of 4 or more.
* Display the presentations with an average score of 2 or less.


## Format for "<code>presentations.txt</code>"

Each line in this file represents a single presentation.  There are
three fields, delimited by colons:

1. The ID number of the presentation.  This number is unique and is
   used by the votes.txt file to identify the presentation receiving
   votes.

1. The title of the presentation

1. The name of the presentor

1. The category of the talk (e.g. Ruby, iPhone)

Examples:

    1:Pascal's Principle:Jenny Titchmarsh:physics
    2:Kinetic Theory of Gas:Amy Smith:physics
    3:Naturalistic Healing:Bob Gifford:health


Format for "votes.txt"
----------------------

Each line in this file is a score, assigned by one of the selection
committee memebers for a single presentation.  Each line consists of
two numbers.  The first is the numeric ID for the presentation.  The
second number is the score (from 1 to 5) for that particular
presentation.

Examples votes.txt file:

    16 4
    3 4
    16 1

The above represents presentation number 16 getting a score of 4,
presentation number 3 getting a score of 4, and presentation number 16
getting a score of 1.  Notice that any given presentation may get
several scores.

#### Hint -- Splitting up colon delimited fields

%hideon

If you have a string with colon delimited fields, you can split out
the strings into individual variables with a split command:

    s = "6:10 Key Success Principles:Mary Bradman:business"
    number, title, author, category = s.split(/:/)

    number   # => "6"
    title    # => "10 Key Success Principles"
    author   # => "Mary Bradman"
    category # => "business"

%hideoff

#### Hint -- <code>votes.txt</code> input file

%hideon

Here is an example input file to use for the votes.

%code "labs/lab04/votes.txt"

%hideoff

#### Hint -- <code>presentations.txt</code> input file

%hideon

Here is an example input file to use for the list of presentations.

%code "labs/lab04/presentations.txt"

%hideoff

#### Hint - Source for Tally

%hideon

**tally.rb**
%code "labs/lab04/solution/tally.rb"

%hideoff

#### Hint -- Tests and Source for Presentation

%hideon

**presentation\_test.rb**
%code "labs/lab04/solution/presentation_test.rb"

**presentation.rb**
%code "labs/lab04/solution/presentation.rb"

%hideoff

<hr>
[Back to Index](index.html)
