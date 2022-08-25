# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize 
    # ...
  end

  def add(song)
    # adds song to list. song being a string
  end

  def listened(song) # stores the songs that have been already listened to 
    # No return value
    #fails if the song doesn't match the song they have listened to
  end

  def list
    # returns the list of songs listened 
  end


```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1

song_list = MusicTracker.new
song_list.list # => []

#2

song_list = MusicTracker.new
song_list.list.add("Firestone - Kygo")
todo_list.list # => ["Firestone - Kygo"]

#3

song_list = MusicTracker.new
song_list.list.add("Firestone - Kygo")
song_list.list.add("Angel eyes - ABBA")
todo_list.list # => ["Firestone - Kygo, "Angel eyes - ABBA""]

#4



#5


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
