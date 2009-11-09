#!/usr/bin/env ruby

def next_in_sequence(n)
  if (n%2) == 0
    n/2
  else
    n*3 + 1
  end
end

def wondrous?(n)
  while n != 1
    n = next_in_sequence(n)
  end
  true
end

if __FILE__ == $0 then

  puts "Enter a number:"
  number = gets.to_i
  if wondrous?(number)
    puts "#{number} is wondrous"
  else
    puts "#{number} is not wondrous"
  end

end
