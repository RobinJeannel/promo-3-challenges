require 'csv'
require_relative 'recipe'

class Cookbook
  attr_reader :recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = []
    retrieve
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.

  def retrieve
    CSV.foreach(@file) do |row|
      @recipes << [row[0], row[1]]
    end
  end

  def list_of_all_recipes
    @recipes
  end

  def add_recipe(recipe)
    @recipes << [recipe.name, recipe.description]

    save
  end

  def remove_recipe(index)
    @recipes.delete_at(index)

    save
  end

  def save
    CSV.open(@file, 'w', col_sep: ',') do |csv|
      @recipes.each do |recipe|
        csv << recipe
      end
    end
  end

end


