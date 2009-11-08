presos = open("presentations.txt") { |f| f.readlines }.map { |ln| ln.split(/:/) }

votes = Hash.new { |h, k| h[k] = 0 }

open("votes.txt") do |f|
  while line = f.gets
    p, v = line.split(/ +/)
    votes[p.to_i] += v.to_i
  end
end

results = votes.map { |k, v| [presos[k], v]}.sort_by { |p| p[1] }
puts results.inspect

