def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(num)
  # num.to_s == num.to_s.reverse
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true