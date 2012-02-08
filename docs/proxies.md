# LAB 5: Read Only Proxies

## Goals

* Learn how to read and write files
* Learn how to use regular expressions to split text

## Discussion

Consider the following (partial) Presentation class:

    class Presentation
      attr_accessor :title, :presenter
    end

Since attr_accessor is used to define the title and presenter
attributes, you have the following methods defined:

* title
* title=
* presentor
* presentor=

Sometimes it is useful to pass a presentation object into some
software an know that it will not be changed.

## Lab

### Part 1 -- Read Only Proxy

Create a ReadOnly proxy class that will take any object and filter out
any method calls that end with an equals sign.  Any method call that
does not end in '=' will be forwarded to the object normally.

Example:

    p = Presentation.new("Talking to Whales", "Phinehas Phisch")
    ro = ReadOnlyProxy.new(p)

    ro.title              # => "Talking to Whales"
    ro.title = "HACKED"
    ro.title              # => "Talking to Whales"

### Part 2 -- Extra Credit

Create a "Shadow" proxy object that intercepts write methods (those
ending in "=") and shadows the new value, without changing the
original object.

Example:

    p = Presentation.new("Talking to Whales", "Phinehas Phisch")
    shadow = ShadowProxy.new(p)

    shadow.title              # => "Talking to Whales"
    shadow.title = "HACKED"
    shadow.title              # => "HACKED"
    p.title                   # => "Talking to Whales"

#### Hint -- Source and Tests for Read Only Proxies

%hideon

**read\_only\_proxy\_test.rb**
%code "labs/lab05/solution/read_only_proxy_test.rb"

**read\_only\_proxy.rb**
%code "labs/lab05/solution/read_only_proxy.rb"

%hideoff

#### Hint -- Source and Tests for Shadow Proxies

%hideon

**shadow\_proxy\_test.rb**
%code "labs/lab05/solution/shadow_proxy_test.rb"

**shadow\_proxy.rb**
%code "labs/lab05/solution/shadow_proxy.rb"

%hideoff

### For Class Discussion

In Ruby, you can freeze (almost) any object by calling the method
:freeze.  Freezing an object prevents anyone from changing the
immediate instance variables of that object. 

1. In what ways is freezing better than a read-only proxy?
1. Under what circumstances would a read-only proxy be a better choice
   than freezing?

<hr>
[Back to Index](index.html)
