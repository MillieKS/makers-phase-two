# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @entries << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    return @entries
  end

  def count_words
    return @entries.map do |x|
      x.count_words
    end.sum
    # other: @entries.sum { |x, y| y.count_words }
    # Factorised : @entries.sum(&:count_words)
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) 
    fail "error" if wpm == 0
    return @entries.sum do |x|
      x.reading_time(wpm)
    end 
     # possible answer @total_time = (count_words.to_f/wpm.to_f).ceil n/ return @total_time
    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |x|
      x.reading_time(wpm) <= minutes
    end
    readable_entries.max_by do |x|
      x.count_words
    end
  end
end
       # reading time will tell you how long it would take to read each instand- reading_time in diary_entry
       # so you want the reading time less than or equal to minutes given in this method
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  