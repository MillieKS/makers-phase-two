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
      expect(diary_entry.reading_time(200)).to eq 3
    end

    it "returns error when count is 0" do
      diary_entry = DiaryEntry.new("my_title", "red orange yellow")
      expect { diary_entry.reading_time(0) }.to raise_error "error"
    end
  end

  describe "reading chunk" do
    it "returns a number of words a reader can read withing a a certain amount of mins" do
      diary_entry = DiaryEntry.new("my_title", "red, yellow, orange, blue")
      expect(diary_entry.reading_chunk(2, 1)).to eq "red, yellow,"
    end

    it "return contents when wpm is greater than count_words" do
      diary_entry = DiaryEntry.new("my_title", "red, yellow, orange, blue")
      expect(diary_entry.reading_chunk(5, 2)).to eq "red, yellow, orange, blue"
    end

    it "return contents when wpm is greater than count_words" do
      diary_entry = DiaryEntry.new("my_title", "red, yellow, orange, blue")
      diary_entry.reading_chunk(1, 4)
      expect(diary_entry.reading_chunk(1, 2)).to eq "red, yellow,"
    end
  end
end