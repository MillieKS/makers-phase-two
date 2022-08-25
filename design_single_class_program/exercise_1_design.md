# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Todolist
  def initialize 
    # ...
  end

  def add(task)
    # adds task to list. task being a string
  end

  def complete(task) # stores completed tasks
    # No return value
    #fails if the task doesn't exist
  end

  def list
    # returns the list 
    # Otherwise, returns a string reminding the user to do the task
  end


```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1

todo_list = TodoList.new
todo_list.list # => []

#2

todo_list = TodoList.new
todo_list.list.add("Go to the gym")
todo_list.list # => ["Go to the gym"]

#3

todo_list = TodoList.new
todo_list.list.add("Go to the gym", "Have some cake")
todo_list.list # => ["Go to the gym", "Have some cake"]

#4

todo_list = TodoList.new
todo_list.list.add("Go to the gym", "Have some cake")
todo_list.complete("Go to the gym")
todo_list.list # => ["Have some cake"]

#5

todo_list = TodoList.new
todo_list.list.add("Go to the gym", "Have some cake")
todo_list.complete("Go to the shops") # => fails "does not exist"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
