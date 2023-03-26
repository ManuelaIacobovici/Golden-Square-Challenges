# File: lib/todo.rb
class Todo
    def initialize(task) # task is a string
      @title = task # title is a property of the hash which is the title of the task.
      @complete = false # state of the task which starts as incomplete
    end
  
    def task
        @title
      # Returns the task as a string
    end
  
    def mark_done!
        @complete = true
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
        @complete
      # Returns true if the task is done
      # Otherwise, false
    end
end