class Celsius

  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit
    (@temperature * 1.8 + 32).round
  end

  def to_s
    "#{@temperature} degrees C"
  end
end

days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
temperatures = [16, 17, 18, 18, 21, 16, 19]

puts "Temperateure for each day of the week:"
days.each_with_index do |day, i|
  celsius = Celsius.new(temperatures[i])
  fahrenheit = celsius.to_fahrenheit
  puts "#{day} | #{celsius.to_s} | #{fahrenheit} degrees F"
end