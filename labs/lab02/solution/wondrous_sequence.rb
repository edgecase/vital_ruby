#!/usr/bin/env ruby

def next_in_sequence(n)
  if (n%2) == 0
    n/2
  else
    n*3 + 1
  end
end

def wondrous_sequence(n)
  result = [n]
  while n != 1
    n = next_in_sequence(n)
    result << n
  end
  result
end

CACHE = {}

def quick_wondrous_sequence(n)
  return CACHE[n] if CACHE[n]
  i = n
  result = [n]
  while i != 1
    i = next_in_sequence(i)
    tail = CACHE[i]
    return result + tail if tail
    result << i
  end
  CACHE[n] = result
  result
end

if __FILE__ == $0 then

  p quick_wondrous_sequence(5)
  p quick_wondrous_sequence(17)
  p quick_wondrous_sequence(5)

end
