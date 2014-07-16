
class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
attr_reader :fruits, :height
attr_writer :pick
  def initialize
    @age = 0
    @fruits = 0
    @height = 0
  end

  def dead?
    (51..100).to_a.sample < @age
  end

  def pick_a_fruit!
    @fruits -= 1
  end


  def one_year_passes!
    @age += 1
    if @age <= 10
      @height = @age
    end
    update_fruits
  end
private

def update_fruits
    if (6..10).cover?(@age)
       @fruits = 100
      elsif (11..15).cover?(@age)
        @fruits = 200
      else
        @fruits = 0
     end
  end

end