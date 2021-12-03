# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)
NUMBER_WORDS = %w(zero one two three four five six seven eight nine)
NUMBERS_HASH = NUMBER_WORDS.zip(DIGITS).to_h


def word_to_digit_og(sentence)
  # sentence.split.map { |word| NUMBERS_HASH[word] || word }.join(" ")
  sentence.split.map do |word|
    punctuation = ''
    if word[-1] == '.'
      word = word[0..-2]
      punctuation = '.'
    end
    (NUMBERS_HASH[word] || word) + punctuation
  end.join(" ")
end

#more efficient with gsub and iterating through the words we want to replace, also avoids the "4." issue
def word_to_digit(sentence)
  NUMBERS_HASH.each do |word, digit|
    sentence.gsub!(/\b#{word}\b/, digit)
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
