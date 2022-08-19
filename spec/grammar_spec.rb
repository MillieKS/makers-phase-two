# 19-Aug-2022
# Navigator: Millie
# Driver: Jovi

require 'grammar'

RSpec.describe "grammar" do

  describe "grammar method" do
    it "returns true if sentence begins with capital letter and ends with correct punctuation" do
      expect(grammar("Hello, how are you?")).to eq true
    end
  end



end