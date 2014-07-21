require_relative 'cookbook'
require_relative 'ui'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @ui = UI.new
  end

  def list
    recipes = @cookbook.all_recipes
    @ui.ask_display_recipes(recipes)
  end

  def create
    recipe = @ui.ask_add_recipe
    @cookbook.add_a_recipe(recipe)
  end

  def destroy
    index = @ui.delete_a_recipe
    @cookbook.remove_recipe(index)
  end
end
