# GET loan amount (in dollars)
#   -loop until valid
# GET APR
#   -number between 1 and 100 (percent)
#   -loop until valid
# GET loan_duration
#   -in years or months (then convert to months)
#   -loop until valid
# apr = 0.05
# monthly_interest_rate = apr / 12
# # monthly_interest_rate = 0.00416666
# loan_amount = 25000
# duration_months = 60
# puts monthly_payment = loan_amount * (monthly_interest_rate/ (1-(1 + monthly_interest_rate)**(-duration_months)))

def valid_positive_int(value)
  value == value.to_i.to_s && value.to_i > 0
end

def valid_loan_amount?(value)
  value == value.to_i.to_s && value.to_i > 0
end

def valid_apr?(value)
  value == value.to_f.to_s && value.to_f.between?(0, 100)
end

def valid_time?(value)
  value == value.to_i.to_s && value.to_i > 0
end

def apr_decimal(apr)
  apr / 100
end

def loan_months(years)
  years * 12
end

def monthly_payment(loan_amount, loan_months, monthly_interest_rate)
  loan_amount * (monthly_interest_rate/ (1 - (1 + monthly_interest_rate)**(-loan_months)))
end

loan_amount = 0
apr = 0.00
loan_years = 0

puts "Welcome to the Loan Calculator"
puts "You will need the loan amount (in dollars), the APR, and the loan duration (in years)"
puts "Please enter the loan amount, in dollars"
loop do
  loan_amount = gets.chomp
  if valid_loan_amount?(loan_amount)
    loan_amount = loan_amount.to_i
    break
  end
  puts "Hmm...that doesn't look quite right, please enter a valid amount"
end
puts "Please enter the APR, in percent (e.g. 5 for 5% APR)"
loop do
  apr = gets.chomp
  if valid_apr?(apr)
    apr = apr_decimal(apr.to_f)
    break
  end
  puts "Hmm...that doesn't look quite right. The APR should be between 1 and 100 (hopefully not near 100!)"
end
monthly_interest_rate = apr / 12
puts "Please enter the loan duration (in years)"
loop do
  loan_years = gets.chomp
  if valid_time?(loan_years)
    loan_years = loan_years.to_i
    break
  end
  puts "Hmm...that doesn't look quite right. Please enter a valid number of years"
end
loan_months = loan_months(loan_years)

monthly_payment = monthly_payment(loan_amount, loan_months, monthly_interest_rate)
puts "To pay off the loan in #{loan_months} months, with a monthly interest rate of #{monthly_interest_rate}, your monthly payment will be $#{format('%.2f', monthly_payment)}."
