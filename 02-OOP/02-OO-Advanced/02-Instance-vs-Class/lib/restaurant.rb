class Restaurant
  #TODO add relevant accessors if necessary
  attr_accessor :average_rating, :city

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @mark = []
  end

  #TODO: implement #filter_by_city and #rate methods
  def rate(mark)
    @mark << mark
    @average_rating = @mark.inject(:+) / @mark.length
  end

  def self.filter_by_city(restaurants, city)
    resto_list = []

    restaurants.each do |restaurant|
      if restaurant.city == city
        resto_list << restaurant
      end
    end
    return resto_list
  end

end

