Customer = Struct.new(:name, :email) do
  def name_with_email
    "#{name} <#{email}>"
  end
end

customer = Customer.new("Rich", "rich@example.com")
customer.each_pair do |name, value|
  puts "#{name} - #{value}"
end
