# File: lib/diary_entry.rb
class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title 
      @contents = contents
      @start = 0
      # ...
    end
  
    def title
      return @title
      # Returns the title as a string
    end
  
    def contents
      return @contents
      # Returns the contents as a string
    end
  
    def count_words
      return 0 if @contents.empty?
      @contents.split(" ").length
      # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm)
      fail "error" if wpm == 0
      return (count_words / wpm.to_f).ceil # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes) 
      if wpm > count_words
        return @contents
      elsif 
        number = wpm * minutes
        end_at = @start + number
        if end_at > count_words
          @start = 0
        end
        text = @contents.split(" ")[@start, number]
        @start = end_at
        return text.join(" ")
      end
      
      # `wpm` is an integer representing the number
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