#Q1 see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.assoc("spot")
p ages.key?("spot")
p ages.member?("spot")
# p ages.select {|key, value| key == "spot"}
p ages.include?("spot")

#Q2 Convert the string in the following ways (code will be executed on original munsters_description above):
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

#Q3 add ages for Marilyn and Spot to the existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

#Q4 See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match("Dino")
# p advice.include?("Dino")

#Q5 Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
p flintstones

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones.push("Dino", "Hoppy")
# flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))
p flintstones

#Q8 Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
# p advice.slice!("Few things in life are as important as ")
p advice.slice!(0, advice.index('house'))
p advice

#Q9 Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
# p statement.split('').select {|char| char == "t"}.size
p statement.count("t")

#Q10 Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
p title.center(40)


