class UI

  def ask_display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index} - #{recipe}"
    end
  end

  def ask_add_recipe
    puts "Please, add a new recipe:"
    name = gets.chomp
    puts "Add a description of your recipe:"
    description = gets.chomp

    Recipe.new(name, description)
  end

  def delete_a_recipe
    puts "Which recipe id do you want to delete ?"
    index = gets.chomp.to_i
    return index
  end
end