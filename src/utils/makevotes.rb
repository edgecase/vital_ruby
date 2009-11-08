#!/usr/bin/env ruby

(25 * 10).times {
  n = rand(24) + 1
  v = rand(5) + 1
  next if (n%10) == (v%10)
  puts "#{n} #{v}"
}
