#Q5 Programmatically determine if 42 lies between 10 and 100.

x = 42
# puts x.between?(0, 100)
puts (0..100).cover?(42)


#Q6 show two different ways to put the expected "Four score and " in front of it.
famous_words = "seven years ago..."

# famous_words = "Four score and " + famous_words
famous_words.prepend("Four score and ")
# "Four score and " << famous_words
puts famous_words

# Q7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!

# Q8 Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# p flintstones.select { |key, value| key == "Barney" }
p flintstones.assoc("Barney") #assoc searches through an array of arrays (or a Hash) and returns the element that starts with the obj
