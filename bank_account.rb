class BankAccount
  def initalize(name)
    @name = name
    @transacrions = []
  end
end

  bank_account = BankAccount.new("Rich")
  puts bank_account.inspect
