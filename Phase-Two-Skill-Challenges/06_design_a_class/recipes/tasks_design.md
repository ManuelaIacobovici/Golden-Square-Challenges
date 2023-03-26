Tasks Class Design Recipe

1. Describe the Problem

# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

# Include the initializer and public methods with all parameters and return values.

'''ruby
class TodoList
  def initialize
    @ ...
	end

	def add(task) # task is a string representing a instruction
	  # Return nothing
	end

	def list
    # Returns a list of the tasks added as strings
		# Except the completed ones
	end

	def complete(task) # task is a string representing a task to mark complete
	  # Returns nothing
		# Fails if the task doesn't exist
	end	
'''

3. Create Examples as Tests

# Make a list of examples of how the class will behave in different situations.

'''ruby
# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Wash the dog.")
todo_list.list # => ["Wash the dog."]

# 3
todo_list = TodoList.new
todo_list.add("Wash the dog.")
todo_list.add("Wash the cat.")
todo_list.list # => ["Wash the dog.", "Wash the cat."]

# 4
todo_list = TodoList.new
todo_list.add("Wash the dog.")
todo_list.add("Wash the cat.")
todo_list.complete("Wash the dog.")
todo_list.list # => ["Wash the cat."]

# 5
todo_list = TodoList.new
todo_list.add("Wash the dog.")
todo_list.complete("Wash the rabbit.") # fails "Not a task."
'''

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.