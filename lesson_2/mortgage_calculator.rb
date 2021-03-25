# Get 3 pieces of info
  # the loan amount
  # the Annual Percentage Rate (APR)
  # the loan duration
# calculate the following things:
  # monthly interest rate
  # loan duration in months
  # monthly payment
# Formula
  # monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

def prompt(message)
  Kernel.puts(">> #{message}")
end

def number?(input)
  input.to_f.to_s == input || input.to_i.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

prompt("Welcome to the Morgage Calculator!")
prompt("Let's calculate your monthly payment. First, please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp
  if name.empty?
    prompt("Please enter a valid name")
  else
    break
  end
end

prompt("Hello, #{name}. Let's get started!")

loop do #main loop
  prompt("Please enter the loan amount (dollars):")
  
  loan_amount = ''
  loan_amount_plain = ''
  loan_amount_num = ''
  loop do
    loan_amount = Kernel.gets().chomp
    loan_amount_plain = loan_amount.delete("$").delete(",") || loan_amount
    loan_amount_num = loan_amount_plain.to_f
    if number?(loan_amount_plain)
      break
    else
      prompt("Not a valid dollar amount. Please try again.")
    end
  end
  
  prompt("Please enter your APR (Annual Percentage Rate):")
  
  apr = ''
  apr_plain = ''
  apr_num = ''
  loop do
    apr = Kernel.gets().chomp
    apr_plain = apr.delete!("%") || apr
    apr_num = apr_plain.to_f
    if number?(apr_plain)
      break
    else
      prompt("Not a valid percentage. Please try again")
    end
  end
  
  prompt("Please enter the loan duration")
  prompt("Years:")
  
  years = ''
  loop do
    years = Kernel.gets().chomp
    if integer?(years)
      break
    else
      prompt("Not a valid year. Please provide the years for your loan. You may input months in the next step!")
    end
  end
  
  prompt("Months:")
  
  months = ''
  loop do
    months = Kernel.gets().chomp
    if integer?(months)
      break
    else
      prompt("Not a valid number of months. Please try again")
    end
  end
  
  
  prompt("Thank you.")
  
  monthly_interest_rate = (apr_num / 100.0) / 12.0
  loan_duration = (years * 12.0) + months
  monthly_payment = loan_amount_num * (monthly_interest_rate / (1.0 - (1.0 + monthly_interest_rate)**(-loan_duration.to_f)))
  monthly_payment_rounded = monthly_payment.to_f.round(2.0)
  
  prompt("#{name}'s monthly payment is $#{monthly_payment_rounded}")
  
  prompt("Would you like to do another calculation?")
  calculate_again = Kernel.gets().chomp
  
  break unless calculate_again.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator! Goodbye!")