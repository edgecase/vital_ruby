#!/usr/bin/env ruby

FIRST = %w(Jim Joe Paul Brandon Brian Ed Alan Susan Kate CJ Mary Jane Elizabeth Amy Jenny Helen)
LAST = %w(McBain Rendell Johston Titchmarsh Smith Jones Newman Kling Tyson Bradman Carella Grex Gifford Lavery)

def choose(items)
  items[rand(items.size)]
end

def random_name
  "#{choose(FIRST)} #{choose(LAST)}"
end

i = 1
while line = gets
  line.strip!
  puts "#{i}:#{line}:#{random_name}"
  i += 1
end
