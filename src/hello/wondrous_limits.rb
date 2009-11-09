#!/usr/bin/env ruby

HUGE = 2**32
LOG2 = Math.log(2)

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

def bits(n)
  (Math.log(n)/LOG2).ceil
end

def show(i, seq)
  m = seq.max
  puts "#{i}: #{seq.size}, #{m} (#{bits(m)})"
end

msize, mmax, mbits = 0, 0, 0
(1..5000000).each do |i|
  seq = wondrous_sequence(i)
  ss = seq.size
  sx = seq.max
  sb = (Math.log(sx)/LOG2).ceil
  if msize < ss
    show_it = true
    msize = ss
  end
  if mmax < sx
    mmax = sx
  end
  if mbits < sb
    show_it = true
    mbits = sb
  end
  show(i, seq) if show_it
end
puts msize, mmax
