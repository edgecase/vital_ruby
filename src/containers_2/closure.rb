def make_counter
  n = 0
  lambda { n += 1 }
end

c = make_counter
c.call
c.call
puts c.call
