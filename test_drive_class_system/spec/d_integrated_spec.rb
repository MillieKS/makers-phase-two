require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 50)
      diary_entry_2 = DiaryEntry.new("Day 2", "hola " * 50)
      diary.add(diary_entry_1) # => diary << diary_entry
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    it " returns the number of words in all diary entries contents" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 50)
      diary_entry_2 = DiaryEntry.new("Day 2", "hola " * 50)
      diary.add(diary_entry_1) # => diary << diary_entry
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 100
    end
  end

  describe "reading time behaviour" do
    it " fails when wpm is 0" do 
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 10)
      diary.add(diary_entry_1)
      expect { diary.reading_time(0) }.to raise_error("error")
    end
      
    it "calculates the reading time for all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 10)
      diary_entry_2 = DiaryEntry.new("Day 2", "hola " * 10)
      diary.add(diary_entry_1) # => diary << diary_entry
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 10
    end

    it "calculates the reading time for all entries rounding up" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 5)
      diary_entry_2 = DiaryEntry.new("Day 2", "hola " * 5)
      diary.add(diary_entry_1) # => diary << diary_entry
      diary.add(diary_entry_2)
      expect(diary.reading_time(3)).to eq 4
    end
  end

  describe "best reading time behaviour entry" do
    context "where we just have one entry and its readable in the time" do
      it "returns that entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Day 1", "my content")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry_1
      end
    end

    context " where we just have one entry and its not readable in time" do
      it "returns nil"  do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Day 1", "my content"* 10)
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context " where we have multiple entries" do
      it " returns the longest entry the user could read in this time" do
        diary = Diary.new
        best_entry = DiaryEntry.new("Day 1", "one two")
        diary.add(DiaryEntry.new("Day 1", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("Day 1", "one two three"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end
