require "diary_entry"

RSpec.describe "diary_entry" do 
  it "it constucts the value of title and contents" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end
  describe "count_words" do
    it "returns the number of words in the contents as an integer" do
      diary_entry = DiaryEntry.new("my_title", "harry has a pet")
      expect(diary_entry.count_words).to eq 4
    end

    it "returns 0 when count is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "reading_time" do
    it "returns an integer as an estimate of the reading time in minutes from wpm(200)" do
      diary_entry = DiaryEntry.new("my_title", "red " * 550)
      expect(diary_entry.rading_time(200)).to eq 3
    end
  end
  

    



end
