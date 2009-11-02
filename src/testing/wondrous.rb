def wondrous?(n)
  while n > 1
    n = next_number_in_sequence(n)
  end
  true
end

def odd?(n)
  (n % 2) == 1
end

def next_number_in_sequence(n)
  if odd?(n)
    3 * n + 1
  else
    n / 2
  end
end
