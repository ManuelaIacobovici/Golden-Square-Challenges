require "food"

class Menu
    # As a customer
    # So that I can check if I want to order something
    # I would like to see a list of dishes with prices.

  def initialize(foods = [])
    @foods = foods
  end

  def list
    # return name and price for each member of collection foods
    foods = @foods.map do |food|
      "#{ food.name }(£#{ food.price })"
    end
    foods.join("\n")
  end

  def get_food(food_name)
    @foods.find { |food| food.name == food_name }
  end
end