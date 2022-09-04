# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

As a user
So that I can check if a task is done or not.
I want to marks all tasks as complete at once.
_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

# File: lib/todo_list.rb
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end


```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE TodoList

# 1

todo_list = TodoList.new
todo_list.complete # => []

#2 task integrated

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.task # => ["Go to the gym"]

#3

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.add("Have some cake")
todo_list.imcomplete # => ["Go to the gym", "Have some cake"]

#4 markdone! integrated

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.markdone!("Have some cake")
todo_list.complete # => ["Have some cake"]

#5 markdone! integrated

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.add("Have some cake")
todo_list.markdone!("Go to the gym")
todo_list.incomplete # => ["Have some cake"]

#6

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.add("Have some cake")
todo_list.complete # => fails "none complete"

#7

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.add("Have some cake")
todo_list.give_up! # => "you have given up"
todo_list.complete # => ["Go to the gym", "Have some cake"]

#8

todo_list = TodoList.new
todo_list.add("Go to the gym")
todo_list.add("Have some cake")
todo_list.give_up! # => "you have given up"
todo_list.incomplete # => []

# EXAMPLE Todo

# 1

todo = Todo.new()
todo.task # => []

#2

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]

#3

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]
todo.mark_done!
todo.done? # => true

#4

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]
todo.done? # => false

#Integrated

#1

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]
todo_list = TodoList.new
todo_list.add(todo)
todo_list.incomplete # => ["Drink some water"]

#2

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]
todo_list = TodoList.new
todo_list.add(todo)
todo_list.complete # => []

#3

todo = Todo.new("Drink some water")
todo.task # => ["Drink some water"]
todo_list = TodoList.new
todo_list.add(todo)
todo_list
todo_list.complete # => []

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
