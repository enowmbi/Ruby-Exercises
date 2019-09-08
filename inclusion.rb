module BankTransactions
  extend BankTransactions
  def deposit
  end
  def withdraw
  end
  def balance
  end
end

class Bank
  extend BankTransactions
end

p BankTransactions.singleton_methods.sort
p BankTransactions.instance_methods.sort
puts "===================================="
p Bank.methods.sort
p Bank.singleton_methods.sort
puts "===================================="
b = Bank.new
b.extend(BankTransactions)
p b.methods.sort

