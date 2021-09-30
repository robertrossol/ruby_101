counter = 2
while counter < 100
  puts counter
  counter += 2
end

(1..99).select{ |num| num % 2 == 0 }.map{ |num| puts num }