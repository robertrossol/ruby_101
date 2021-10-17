#if we wanted multisum to be more flexible...
def multiple?(num, divisor)
  num % divisor == 0
end

def multisum(num)
  (1..num).select{ |num| multiple?(num, 3) ||  multiple?(num, 5)}.sum #or reduce(:+)
end
#original solution
# def multisum(num)
#   (1..num).select{ |num| num % 3 == 0 || num % 5 == 0}.sum #or reduce(:+)
# end

#if we wanted multisum to be more flexible...



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168