require "menu"

class Basket
	# As a customer
	# So that I can order the meal I want
	# I would like to be able to select some number of several available dishes.

	# As a customer
	# So that I can verify that my order is correct
	# I would like to see an itemised receipt with a grand total.

	# As a customer
	
	# So that I am reassured that my order will be delivered on time
	# I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

	def initialize
		@order = []
	end

	def add(food_name, menu)
	# adds a food to the order collection
	  food = menu.get_food(food_name)
	  @order.push(food) unless food.nil?
	end

	def list_receipt
	# list the foods and prices
	  total = 0
		receipt_items = @order.map do |food|
			total += food.price.to_f
      "#{ food.name }(£#{ food.price })"
    end
    receipt_items.join("\n") + "\nTotal: £#{ "%.2f" % total }"
	end

	def complete_order
		# the order has been placed and a message sent
		if @order.count > 0
			@order = []
			"Thank you! Your order was placed and will be delivered before 18:52"
		else
      "Your basket is empty"
		end
	end
end
