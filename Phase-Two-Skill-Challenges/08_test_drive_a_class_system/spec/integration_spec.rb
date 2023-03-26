require "todo_list"
require "todo"

RSpec.describe "integration" do
  context "given no todos" do # => to be moved to unit test for todo_list
		it "none incomplete" do
			todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
		end

		it "none complete" do
			todo_list = TodoList.new
      expect(todo_list.complete).to eq []
		end
	end  

	context "adding abstract todos" do
		it "add one todo to the list" do
			todo = Todo.new("")
			todo_list = TodoList.new
			todo_list.add(todo)
			expect(todo_list.incomplete.length).to eq 1
		end
	end

	context "return complete todos" do
		it "add one todo to the list and complete it" do
			todo = Todo.new("read a book")
			todo_list = TodoList.new
			todo_list.add(todo)
			todo_list.give_up!
			expect(todo_list.complete.length).to eq 1
		end
	end
end
