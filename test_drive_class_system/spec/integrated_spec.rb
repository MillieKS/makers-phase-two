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
end
