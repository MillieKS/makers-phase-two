class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @tracker = 0
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
        return @contents.split.count 
      # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm) 
      fail "error" if wpm == 0
      return (count_words / wpm.to_f).ceil
        # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes)
        words_can_read = wpm * minutes
        @tracker = 0 if count_words < @tracker 
        if words_can_read >= count_words 
          return @contents
        else 
          output = @contents.split[@tracker, words_can_read].join(" ")
          @tracker += words_can_read
        end
        return output
        
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