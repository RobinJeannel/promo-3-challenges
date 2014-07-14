
def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

products = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170,
}

total = products[burger] + products[side] + products[beverage]
return total
end


##############################################################################
def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
 total = 0

  products = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "Happy Meal" => 580,
    "Best Of Big Mac" => 590,
    "Best Of Royal Cheese" => 430,
  }

  orders.each do |element|
    #products[element]
    total += products[element]
  end
  return total
end




