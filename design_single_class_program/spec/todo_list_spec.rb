require "todo_list"

RSpec.describe TodoList do 
  context "given no task but initialised a list" do
		it "returns empty list as an array" do
			todo_list = TodoList.new
			expect(todo_list.list).to eq [] # => []
		end
	end

	context "given a task" do
		it "adds task to list" do 
			todo_list = TodoList.new
			todo_list.add("Go to the gym")
			expect(todo_list.list).to eq ["Go to the gym"]
		end
	end

	context "given 2 tasks" do
		it "adding both tasks to the list" do
			todo_list = TodoList.new
			todo_list.add("Go to the gym")
			todo_list.add("Have some cake")
			expect(todo_list.list).to eq ["Go to the gym", "Have some cake"]
		end
	end

	context "given a task thats complete" do
		it "remove the task from the to do list" do
			todo_list = TodoList.new
			todo_list.add("Go to the gym")
			todo_list.add("Have some cake")
			todo_list.complete("Go to the gym")
			expect(todo_list.list).to eq ["Have some cake"]
		end
	end

	context "given a task that doesn't exist" do
		it "return error" do
			todo_list = TodoList.new
			todo_list.add("Go to the gym")
			expect{ todo_list.complete("Facial appointment") }.to raise_error "does not exist"
		end
	end
end
