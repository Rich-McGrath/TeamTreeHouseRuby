require "./todo_item"

class TodoList
  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

  def add_item(name)
    todo_items.push(TodoItem.new(name))
  end
end

todo_list = TodoList.new("Groceries")
todo_list.add_item("Milk")
todo_list.add_item("Eggs")

puts todo_list.inspect
