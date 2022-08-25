class TodoList

	def initialize
		@tasks = []
	end

	def add(task)
		@tasks << task
	end

	def list 
		@tasks
	end

	def complete(task)
		fail "does not exist" unless @tasks.include? task 
		@tasks.delete(task)
	end

end
