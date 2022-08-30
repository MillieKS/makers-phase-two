require "diary"

RSpec.describe Diary do
  context "initialising" do
    it "reurns an empty array of entries" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end
end