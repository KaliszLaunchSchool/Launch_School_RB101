p loan_amount = Kernel.gets().chomp
p loan_amount_plain = loan_amount.delete("$").delete(",")
p loan_amount_num = loan_amount_plain.to_f