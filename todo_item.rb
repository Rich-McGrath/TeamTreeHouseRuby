class TodoItem
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = fales
  end
end
