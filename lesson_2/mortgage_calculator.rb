=begin
Get 3 pieces of info
  the loan amt
  the Annual Percentage Rate (APR)
  the loan duration
calculate the following things:
  monthly int rate
  loan duration in months
  monthly payment
Formula
  monthly_payment =
    loan_amt * (monthly_int_rate /
    (1 - (1 + monthly_int_rate)**(-loan_duration)))
=end

def prompt(message)
  Kernel.puts(">> #{message}")
end

def number?(input)
  input.to_f.to_s == input || input.to_i.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

def greater_than_zero?(input)
  input <= 0
end

def not_negative?(input)
  input <0
end

def clear_screen
  system('clear') || system('cls')
end

def get_name
  name = ''
  loop do
    name = gets.chomp
    break unless name.empty?
    prompt("Please enter a valid name")
  end
  name
end

prompt("Welcome to the Morgage Calculator!")

prompt("Let's calculate your monthly payment. First, please enter your name:")

name = get_name

clear_screen

prompt("Hello, #{name}. Let's get started!")

loop do # main loop
  prompt("Please enter the loan amount (dollars):")

  loan_amt = ''
  loan_amt_plain = ''
  loan_amt_num = ''
  loop do
    loan_amt = Kernel.gets().chomp
    loan_amt_plain = loan_amt.delete("$").delete(",") || loan_amt
    loan_amt_num = loan_amt_plain.to_f
    if greater_than_zero?(loan_amt_num)
      prompt("Please enter a loan amount greater than zero.")
    elsif number?(loan_amt_plain)
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
    if not_negative?(apr_num)
      prompt("Please enter a positive APR")
#    elsif apr_plain == '0'
#      apr_num = 0 #need to figure out what to do if APR is 0
#      break
    elsif number?(apr_plain)
      break
    else
      prompt("Not a valid percentage. Please try again")
    end
  end

  prompt("Please enter the loan duration (enter years, then months)")
  prompt("Years:")

  years = ''
  loop do
    years = Kernel.gets().chomp
    if not_negative?(years.to_i)
      prompt("Please enter a positive number of years")
    elsif integer?(years)
      break
    else
      prompt("Not a valid year. Please provide the years for your loan.
              You may input months in the next step!")
    end
  end

  prompt("Months:")

  months = ''
  loop do
    months = Kernel.gets().chomp
    if not_negative?(months.to_i) || months.to_i >= 12
      prompt("Please enter a valid number of months (between 0 and 11)")
    elsif integer?(months)
      break
    else
      prompt("Not a valid number of months. Please try again")
    end
  end

  clear_screen

  prompt("Thank you.")

  monthly_int_rate = (apr_num / 100.0) / 12.0
  loan_duration = (years.to_i * 12.0) + months.to_i
  
  monthly_payment =
    loan_amt_num * (monthly_int_rate /
    (1.0 - (1.0 + monthly_int_rate)**(-loan_duration)))
  
  monthly_payment_rounded = monthly_payment.to_f.round(2.0)

  prompt("#{name}'s monthly payment is $#{monthly_payment_rounded}")

  prompt("Would you like to do another calculation?")
  calculate_again = Kernel.gets().chomp

  clear_screen

  break unless 
    calculate_again.downcase() == 'y' || calculate_again.downcase() == 'yes'

end

prompt("Thank you for using the Mortgage Calculator! Goodbye!")
