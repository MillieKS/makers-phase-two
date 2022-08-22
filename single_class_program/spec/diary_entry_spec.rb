require "diary_entry"

RSpec.describe "diary_entry" do 
  it "it constucts the value of title and contents" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end



end
