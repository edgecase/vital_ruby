# Project B: Sudoku Solver

## Goals

* Design and build a full Ruby program

## Discussion

Write a program that solves Sudoku problem.

From [Wikipedia](http://en.wikipedia.org/wiki/Sudoku):

<blockquote>
  Sudoku is a logic-based, combinatorial number-placement
  puzzle. The objective is to fill a 9×9 grid with digits so that
  each column, each row, and each of the nine 3×3 sub-grids that
  comprise the grid (also called "boxes", "blocks", "regions", or
  "sub-squares") contains all of the digits from 1 to 9. The puzzle
  setter provides a partially completed grid. Completed puzzles are
  usually a type of Latin square with an additional constraint on the
  contents of individual regions.
</blockquote>

For example, given the starting puzzle ("." indicates an empty
square):

    . 2 5  6 . .  4 9 .
    7 . .  . 2 .  . . .
    . 8 4  . 3 7  6 . .

    5 . 9  . . .  . 3 .
    1 . 2  3 . 5  8 . 9
    . 3 .  . . .  2 . 4

    . . 3  8 5 .  9 2 .
    . . .  . 9 .  . . 3
    . 9 1  . . 3  5 7 .

A solution would be:

    3 2 5  6 1 8  4 9 7
    7 1 6  9 2 4  3 8 5
    9 8 4  5 3 7  6 1 2

    5 6 9  4 8 2  7 3 1
    1 4 2  3 7 5  8 6 9
    8 3 7  1 6 9  2 5 4

    4 7 3  8 5 1  9 2 6
    2 5 8  7 9 6  1 4 3
    6 9 1  2 4 3  5 7 8

The input to your sudoku solver will be a puzzle file.  A puzzle file
will contain 91 digits and/or periods.  Each digit in the puzzle file
represents the starting value for single digit square of the puzzle.
A period indicates that particular single digit square has no starting
value.

White space (spaces, tabs and new lines) may be included in the puzzle
file for formatting, but may be ignored by the solver.

Lines in the puzzle file that begin with "#" are comments and should
be ignored.

Here's an example puzzle file for the above example:

<pre>
.256..49.
7...2....
.84.376..
5.9....3.
1.23.58.9
.3....2.4
..385.92.
....9...3
.91..357.
</pre>

The solver should display (at least) the initial puzzle and the final
solution.  Additional output showing the progess in reaching the
solution is OK, but not required.

The puzzles directory in the project area has a number of puzzles to
try out.  The easy1.sud puzzle is used in the examples above.

### Example Puzzles

#### easy1.sud (click to view)

%hideon

%code "labs/project_b/puzzles/easy1.sud"

%hideoff

#### medium.sud (click to view)

%hideon

%code "labs/project_b/puzzles/medium.sud"

%hideoff

#### evil.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil.sud"

%hideoff

#### evil2.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil2.sud"

%hideoff

#### evil3.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil3.sud"

%hideoff

#### evil4.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil4.sud"

%hideoff

#### evil5.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil5.sud"

%hideoff

#### evil6.sud (click to view)

%hideon

%code "labs/project_b/puzzles/evil6.sud"

%hideoff

#### empty.sud (click to view)

%hideon

%code "labs/project_b/puzzles/empty.sud"

%hideoff

#### wiki.sud (click to view)

%hideon

%code "labs/project_b/puzzles/wiki.sud"

%hideoff

#### wiki_dos.sud (click to view)

%hideon

%code "labs/project_b/puzzles/wiki_dos.sud"

%hideoff

### Hints

#### Hint -- Source and Test for a Sudoku Solver

%hideon

**sudoku_test.rb**
%code "labs/project_b/solution/sudoku_test.rb"

**sudoku.rb**
%code "labs/project_b/solution/sudoku.rb"

%hideoff

<hr>
[Back to Index](index.html)
