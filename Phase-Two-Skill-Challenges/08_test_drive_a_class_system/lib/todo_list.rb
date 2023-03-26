# File: lib/todo_list.rb
class TodoList
  def initialize
    @todos = []
  end

  def add(todo) 
    @todos.push(todo)
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
    # ["one"]
    @todos.select do |todo|
       !todo.done?
    end
  end

  def complete
    # Returns all complete todos
    @todos.select do |todo| 
        todo.done?
    end
  end

  def give_up!
    @todos.each do |todo|
       todo.mark_done!
    end
    # Marks all todos as complete
  end
end