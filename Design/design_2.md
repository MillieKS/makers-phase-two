# Grammar Check Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

def grammar(text)
end
'grammar' this method verifies whether a setence starts with a capital letter and ends with a sentence-ending punctuation mark.
text: a string (e.g 'Hello, how are you?')

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# Example 1
grammar("Hello, how are you?") # => true
# Example 2
grammar("Hello, how are you") # => false
# Example 3
grammar("hello, how are you?") # => false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._x