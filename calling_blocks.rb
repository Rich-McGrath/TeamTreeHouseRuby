def get_name(prompt, &block)
  print prompt
  name = gets.chomp
  block.call(name) if block_given?
  name
end

my_name = get_name ("Name: ") do |your_name|
  puts "That's a cool name, #{your_name}!"
end

puts "my_name: #{my_name}"
