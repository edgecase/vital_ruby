#!/usr/bin/env ruby

def wondrous?(n)
  while n > 1
    if (n % 2) == 0
      n /= 2
    else
      n = n * 3 + 1
    end
  end
  true
end

(1..20).each do |i|
  puts wondrous?(i)
end

