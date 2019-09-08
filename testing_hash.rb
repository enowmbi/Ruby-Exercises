[{"name" => 'Salary',"description" => ' ',"is_income" => false },{"name" => 'Donation',"description" => ' ',"is_income" => true},
{"name" => 'Fee',"description" => ' ',"is_income" => true}].each do |param|
  puts "=============================================================="
  # FinanceTransactionCategory.find_or_create_by(param)
   puts param["name"]
end

