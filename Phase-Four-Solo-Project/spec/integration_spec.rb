require "basket"
require "food"
require "menu"

RSpec.describe "integration" do
  
	foods_mock = [["Pizza", "20.00"],
	  ["Olio", "9.99"],
		["Lasagna", "15.00"],
		["Bolognese", "22.50"],
		["Marinara", "10.90"],
		["Ravioli", "14.20"]].map { |food| Food.new(food[0], food[1]) }

  context "I want to see a list of dishes with prices" do
    it "it lists one dish with price and name in the menu" do
			pizza = Food.new("Pizza", "20.00")
      foods = [pizza]
			menu = Menu.new(foods)
			expect(menu.list).to eq "Pizza(£20.00)"
    end

		it "it lists two dishes with price and name in the menu" do
			pizza = Food.new("Pizza", "20.00")
			lasagna = Food.new("Lasagna", "15.00")
			foods = [pizza, lasagna]
			menu = Menu.new(foods)
			expect(menu.list).to eq "Pizza(£20.00)\nLasagna(£15.00)"
    end

		it "it lists no dishes in the menu" do
			menu = Menu.new
			expect(menu.list).to eq ""
    end
  end  

	context "I want to see an itemised receipt with a grand total" do
		it "adds the dish with price and name in the basket" do
			basket = Basket.new
			menu = Menu.new(foods_mock)
			basket.add('Pizza', menu)
			basket.add('Lasagna', menu)
			expect(basket.list_receipt).to eq "Pizza(£20.00)\nLasagna(£15.00)\nTotal: £35.00"
		end

		it "adds the dish with price and name in the basket" do
			basket = Basket.new
			menu = Menu.new(foods_mock)
			basket.add('Marinara', menu)
			basket.add('Ravioli', menu)
			expect(basket.list_receipt).to eq "Marinara(£10.90)\nRavioli(£14.20)\nTotal: £25.10"
		end
	end

	context "I want to receive a text once the order is complete" do
		it "tries to complete the order with an empty basket" do
			basket = Basket.new()

			expect(basket.complete_order).to eq "Your basket is empty"
		end

		it "tries to complete the order with an empty basket" do
			basket = Basket.new()
			menu = Menu.new(foods_mock)
			basket.add('Marinara', menu)
			basket.add('Ravioli', menu)
			expect(basket.complete_order).to eq "Thank you! Your order was placed and will be delivered before 18:52"
		end
	end
end