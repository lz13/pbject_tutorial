class Person
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "#{@name} is of #{@age} years old."
  end

  def is_a?(type)
    if self.instance_of?(type)
      puts "true"
    else
      puts "false"
    end
  end
end


class SuperHero < Person
  def initialize(name, age, superpower)
    super(name, age)
    @superpower = superpower
  end

  def to_s
    "#{@name} is #{@age} years old and has the superpower of #{@superpower}."
  end
end

emily = Person.new("Emily", 28)
jean_grey = SuperHero.new("Jean Grey", 51, "Telekinesis")

emily.is_a?(Person)
jean_grey.is_a?(Person)

emily.is_a?(SuperHero)
jean_grey.is_a?(SuperHero)

puts emily
puts jean_grey