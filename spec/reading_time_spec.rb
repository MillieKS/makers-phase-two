# 19-Aug-2022
# Navigator: Jovi
# Driver: Millie

require 'reading_time'

RSpec.describe "reading_time" do
  describe "reading_time method" do
    it "returns 1 when given a text with 200 words" do 
      expect(reading_time("word " * 200)).to eq 1
    end

    it "returns 1 when given a text with 1000 words" do 
      expect(reading_time("word " * 1000)).to eq 5
    end
  end
end