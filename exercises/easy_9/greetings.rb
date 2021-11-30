# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

def greetings(name_arr, details_hsh)
  name = name_arr.join(' ')
  # details = details_hsh[:title] + " " + details_hsh[:occupation]
  "Hello, #{name}! "\
    "Nice to have a #{details_hsh[:title]} #{details_hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
