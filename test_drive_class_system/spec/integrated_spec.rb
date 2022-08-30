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

    xit " returns the number of words in all diary entries contents" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day 1", "hello " * 50)
      diary_entry_2 = DiaryEntry.new("Day 2", "hola " * 50)
      diary.add(diary_entry_1) # => diary << diary_entry
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 100
    end
  end
end
