# Write a method that will take a short line of text, and print it within a box.

def print_in_box(text)
  # text = text[0..75] if text.size > 76
  #if we want a fun ... to indicate theres more: text = text[0..72]+'...' if text.size > 75
  line_length = text.size > 76 ? 78 : text.size + 2
  horizontal_border = "+#{'-' * line_length}+"
  empty_line = "|#{' ' * line_length}|"

  text_arr = []
  while text.size > 0
    text_arr << text.slice!(0..75)
  end

  # text_arr << text

  puts horizontal_border
  puts empty_line
  text_arr.each do |line| 
    text_arr.size > 1 ? white_space = ' ' * (76 - (line.size)) : white_space = ''
    puts "| #{line + white_space} |"
  end
  # puts "| #{text} |"
  puts empty_line
  puts horizontal_border
end


p print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

p print_in_box('To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.')
# +--+
# |  |
# |  |
# |  |
# +--+