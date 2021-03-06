class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      hides: 0,
      runs: 0
    }
  end

  def say(&block)
    print "#{name} says... "
    yield
  end

  def print_scoreboard
    puts "------------------------------"
    puts "#{name} scorebaord"
    puts "------------------------------"
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "- Runs: #{actions[:runs]}"
    puts "- Hides: #{actions[:hides]}"
    puts "------------------------------"
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams!"
    yield
  end

  def scare(&block)
    actions[:scares] =+1
    print "#{name} scares you!"
    yield
  end

  def hide(&block)
    actions[:hides] =+1
    print "#{name} hides!"
    yield self if block_given? #give access to the class inside the block
  end

  def run(&block)
    actions[:runs] =+1
    print "#{name} runs"
    yield
  end

  def inspect
    "<#{name}, #{actions}>"
  end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home."}
monster.scream { puts " BOO!" }
monster.scare { puts " Go away!" }
monster.run { puts "Going to get you!"}

monster.hide do |m| #|m| passing the class in via yield call on line 45
  puts "Running away and hiding?"
  puts m.inspect
end

puts "\n"
monster.print_scoreboard
