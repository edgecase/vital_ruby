if /^(\d+):(\d+):(\d+)$/ =~ ARGV.first
  hours = $1.to_i
  minutes = $2.to_i
  seconds = $3.to_i
  puts "Hours:   #{hours}"
  puts "Minutes: #{minutes}"
  puts "Seconds: #{seconds}"
else
  puts "Not a time"
end
