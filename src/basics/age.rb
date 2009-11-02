def age(birth_year)
  2009 - birth_year
end

puts "What is your birth year?"
year = gets.to_i
puts "Your age is #{age(year)}"
