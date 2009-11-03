#!/usr/bin/env ruby

ARGV.each_with_index do |arg, i|
  puts "#{i}: #{arg.inspect}"
end
