# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have.


As a user
So that I make diary entries.
I want to be able to count how many words are in the diary entry.
I want to be able to find a diary entry that I can read within the time and spead (wpm) I have given.
I want to be able return an amount of an entry that equates to what I can ready in the time I have(wpm)
_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

# File: lib/diary.rb
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
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
