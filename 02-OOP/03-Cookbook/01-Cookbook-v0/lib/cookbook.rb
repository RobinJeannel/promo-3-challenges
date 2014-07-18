require 'csv'

class Cookbook
attr_reader :list_recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  @file = file
  @list_recipes = []
  retrieve
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.

  def retrieve
    CSV.foreach(@file) do |row|
      @list_recipes << row[0]
    end
  end

  def create(recipe)
    @list_recipes << recipe

    CSV.open(@file, 'w') do |csv|
      @list_recipes.each do |recipe|
        csv << [recipe]
      end
    end
  end

  def destroy(recipe)
    @list_recipes.delete(recipe)

    CSV.open(@file, 'w') do |csv|

        @list_recipes.each do |recipe|
          csv << [recipe]
      end
    end
  end

end

cookbook = Cookbook.new('recipes.csv')
cookbook.create('fish')
cookbook.create('chips')
cookbook.destroy('chips')
