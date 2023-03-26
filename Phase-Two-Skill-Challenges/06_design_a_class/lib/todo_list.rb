class TodoList
	def initialize
		@tasks = []
	end
	
	def add(task)
		@tasks << task
	end

	def complete(task)
		fail "Not a task." unless @tasks.include? task
		@tasks.delete(task)
	end
	
	def list
		return @tasks
	end
end
