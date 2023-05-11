# defining a color class
class Color

  def initialize(name, hexcode)
    @name = name
    @hexcode = hexcode
  end

  def name
    @name
  end

  def hexcode
    @hexcode
  end
end

color = Color.new("purple", "#8824a4")

# color1 = Color.new("purple", "#8824a4")
# color2 = Color.new("blue", "#4x6fcc")

puts "The hexcode of #{color.name} is #{color.hexcode}"