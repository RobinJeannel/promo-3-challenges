
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
  "Sprite" => 170
}

total = products[burger] + products[side] + products[beverage]
return total
end


##############################################################################
def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
products = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" : 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170
  "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
  "Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
  "Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
}

orders.each do

end



