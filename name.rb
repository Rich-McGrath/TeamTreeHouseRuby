class Name
attr_accessor :title, :first_name, :middle_name, :last_name



  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

end

name = Name.new("Mr.", "Rich", "Warren", "McGrath ")
puts name.title + " " + name.full_name

puts "Title: #{name.title}"
#name.title = "Dr."
#puts "Title: #{name.title}"
