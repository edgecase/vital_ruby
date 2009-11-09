#!/usr/bin/env ruby

(25 * 10).times {
  n = rand(24) + 1
  v = [[(n % 5) - 1 + rand(3), 1].max, 5].min
  puts "#{n} #{v}"
}
