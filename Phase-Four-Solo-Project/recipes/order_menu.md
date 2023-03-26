Order_menu Multi-Class Planned Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

2. Design the Class System

Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ MusicPlayer                │
│                            │
│ - add(track)               │
│ - all                      │
│ - search_by_title(keyword) │
│   => [tracks...]           │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Track(title, artist)    │
│                         │
│ - title                 │
│ - artist                │
│ - format                │
│   => "TITLE by ARTIST"  │
└─────────────────────────┘
Also design the interface of each class in more detail.

class Basket
  def initialize
	@...
	end

	def add
	 # adds a food to the order collection
	end

	def list_receipt
	 # list the foods and prices
	end

	def complete_order
	 # the order has been placed and an message sent
	end
end

class Menu
  def initialize(foods)
   @...
  end

  def list
   # return name and price for each member of collection foods
  end
end

class Food
	def initialize(name, price)
		@name = name
		@price = price
	end

	def name
		@name
	end

	def price
		@price
	end
end

3. Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.