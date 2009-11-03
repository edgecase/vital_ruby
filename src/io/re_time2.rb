times = ARGV.first.split(/:/)
if times.all? { |s| s =~ /^\d+$/ }
  hours, minutes, seconds =
    times.map { |s| s.to_i }
  puts "Hours:   #{hours}"
  puts "Minutes: #{minutes}"
  puts "Seconds: #{seconds}"
else
  puts "Not a time"
end
