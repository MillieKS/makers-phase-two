# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# Takes argument 'text' which represents the number of words in the given text.
def reading_time(text)
end
'reading_time' this method returns estimated reading time for a given bit of text based on 200 words per minute.
text: a string(e.g 'Hello, how are you?')

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# Example 1
reading_time("word" * 200) # => 1
# Example 2
reading_time("word" * 1000) # => 5

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._x