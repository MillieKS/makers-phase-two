# Grammar Check Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

def todo(text)
end
'todo' this method verifies whether the string includes "#TODO" within the text.
text: a string (e.g 'Hello, how are you?')

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# Example 1
todo("Drink 3 litres of water a day #TODO") # => true
# Example 2
todo("Practice yoga for 15mins") # => false
# Example 3
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._x