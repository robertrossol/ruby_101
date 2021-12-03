# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
#   1 2 3 4 5 6 7 8 9 10
# 1 x 
# 2 x -
# 3 x   -
# 4 x -   x
# 5 x       -
# 6 x - x     -
# 7 x           -
# 8 x -   x       -
# 9 x   -           x
# 10x -     x         -
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# def lights(number)

#   1.upto(number).select do |light_num| #1 .. 5
#     light_on = true
#     (1..(light_num/2)).each do |num|
#       light_on = !light_on if light_num % num == 0
#     end
#     light_on
#   end
# end

def initialize_lights(number)
  (1..number).each_with_object({}) do |num, hash|
    hash[num] = 'off'
  end
end

def flip_light(hash, key)
  hash[key] = (hash[key] == 'on') ? 'off' : 'on'
end

def lights(number)
  lights = initialize_lights(number)
  (1..number).each do |multiple|
    lights.each do |light, status|
      flip_light(lights, light) if light % multiple == 0
    end
  end
  lights.select {|light, status| status == 'on'}
end

p initialize_lights(7)
p lights(100)
