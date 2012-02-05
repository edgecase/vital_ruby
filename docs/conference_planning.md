# LAB 3: Conference Planning

## Goals

* Learn how to create Ruby objects and classes

## Discussion

You are organizing a major conference and you decide to write some
software that will help the selection committee select the best
presentations from those submitted.  Each member of the selection
committee will rate the presentations from 1 to 5.

## Lab

For this assignment,

1. Create a Presentation Class.  It should:

    * Have a title
    * Have the name of the presentor
    * Be able to add scores from the selection committee.  Scores
      will be an integer from 1 to 5.
    * Be able to report its average score

1. The add_score method should raise an exception if the score is
  less than 1 or greater than 5.

Example:

    presentation = Presentation.new("How To Program in Ruby, "Ruby Hacker")
    presentation.add_score(5)
    presentation.add_score(4)
    presentation.average_score  # => 4.5

#### Hint -- Specs for <code>Presentation</code>

%hideon

Here is the specification for the presentation class.

%code "labs/lab03/solution/presentation_spec.rb"

%hideoff

#### Hint -- Source for <code>Presentation</code>

%hideon

Here is the source for the presentation class.

%code "labs/lab03/solution/presentation.rb"

%hideoff
