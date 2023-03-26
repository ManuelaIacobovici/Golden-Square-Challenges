require "todo_list"

RSpec.describe TodoList do
  context "given no tasks" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
		end
  end

	context "given a task" do
    it "has the task in the list" do
			todo_list = TodoList.new
      todo_list.add("Wash the dog.")
      expect(todo_list.list).to eq ["Wash the dog."]
		end
	end

	context "given two task" do
    it "has both tasks in the list" do
			todo_list = TodoList.new
      todo_list.add("Wash the dog.")
      todo_list.add("Wash the cat.")
      expect(todo_list.list).to eq ["Wash the dog.", "Wash the cat."]
		end
	end

	context "when we complete a task" do
    it "removes the task from the list" do
			todo_list = TodoList.new
      todo_list.add("Wash the dog.")
      todo_list.add("Wash the cat.")
			todo_list.complete("Wash the dog.")
      expect(todo_list.list).to eq ["Wash the cat."]
		end
	end

	context "when we try to complete a non-existing task" do
    it "fails" do
			todo_list = TodoList.new
      todo_list.add("Wash the dog.")
      expect { todo_list.complete("Wash the rabbit.") }.to raise_error "Not a task."
		end
	end
end