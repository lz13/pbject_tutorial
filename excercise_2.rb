class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty.to_sym
  end

  attr_reader :name, :type, :difficulty

  DIFFICULTY_LEVELS = {easy: 1, medium: 2, hard: 3, advanced: 4, expert: 5}

  def is_harder_than?(other_tutorial)
    if @type != other_tutorial.type
      puts "You can't compare a #{type} with a #{other_tutorial.type} tutorial"
    else
      DIFFICULTY_LEVELS[@difficulty] > DIFFICULTY_LEVELS[other_tutorial.difficulty]
    end
  end
end

tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to Javascript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and API's", :javascript, :medium)

puts tutorial1.is_harder_than?(tutorial2)

puts tutorial2.is_harder_than?(tutorial1)

puts tutorial2.is_harder_than?(tutorial3)

puts tutorial3.is_harder_than?(tutorial2)