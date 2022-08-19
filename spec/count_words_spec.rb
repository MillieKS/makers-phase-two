# 19-Aug-2022
# Navigator: Millie
# Driver: Jovi

require 'count_words'

RSpec.describe "count words" do 
  it "return the nunber of workds in a string" do
    result = count_words("I am a human")
    expect(result).to eq 4
  end
end