class Ski
  attr_reader :speed, :resistance, :size, :ski_waxed, :ski_equiped

  def initialize(speed, resistance, size)
    @ski_equiped = false
    @ski_waxed= false
    @speed = speed
    @resistance = resistance
    @size = size
  end

  def wax
    @ski_waxed = true
  end

  def equiped
    @ski_equiped = true
  end

end

salomon = Ski.new(50, "A", 180)
head = Ski.new(40, "B", 175)

puts salomon.ski_waxed
salomon.wax
puts salomon.ski_waxed

