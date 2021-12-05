def balanced?(str)
  count = 0
  str.chars.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    break if count < 0
    # return false if count < 0
  end
  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
