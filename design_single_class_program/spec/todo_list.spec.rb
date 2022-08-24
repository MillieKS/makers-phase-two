require "todo_list"

RSpec.describe TodoList do 
  context "given no task but initialised a list" do
		xit "returns empty list as an array" do
			todo_list = TodoList.new
			expect(todo_list.list).to eq [] # => []
		end
	end

	context "given a task" do
		xit "adds task to list" do 
			todo_list = TodoList.new
			todo_list.list.add("Go to the gym")
			expect(todo_list.list).to eq ["Go to the gym"]
		end
	end

	context "given 2 tasks" do
		xit "adding both tasks tto the list" do
			todo_list = TodoList.new
			todo_list.list.add("Go to the gym", "Have some cake")
			expect(todo_list.list).to eq ["Go to the gym", "Have some cake"]
		end
	end

	context "given a task thats complete" do
		xit "remove the task from the to do list" do
			todo_list = TodoList.new
			todo_list.list.add("Go to the gym", "Have some cake")
			todo_list.complete("Go to the gym")
			expect(todo_list.list).to eq ["Have some cake"]
		end
	end

	context "given a task that doesn;t exist" do
		xit "return error" do
			todo_list = TodoList.new
			todo_list.list.add("Go to the gym", "Have some cake")
			todo_list.complete("Go to the shops")
			expect{ todo_list.list}.to raise_error "does not exist"
		end
	end
end
