(1..99).each { |num| puts num if num.odd? }

(1..99).select { |num| num % 2 == 1}.map { |num| puts num }
