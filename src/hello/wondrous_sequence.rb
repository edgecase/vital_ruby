#!/usr/bin/env ruby

def wondrous_sequence(n)
  result = [n]
  while n > 1
    if (n % 2) == 0
      n /= 2
    else
      n = n * 3 + 1
    end
    result << n
  end
  result
end

n = ARGV.first.to_i
seq = wondrous_sequence(n)
puts "N:    #{n}"
puts "SEQ:  #{seq.inspect}"
puts "SIZE: #{seq.size}"
puts "MAX:  #{seq.max}"
puts "BITS: #{(Math.log(seq.max)/Math.log(2)).ceil}"
