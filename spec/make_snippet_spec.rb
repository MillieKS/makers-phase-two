require 'make_snippet'

RSpec.describe "make snippet" do
  it "return a string if it's less than or equal to five words" do
    result = snippet("hello my name is J.")
    expect(result).to eq "hello my name is J."
  end

  it "returns first 5 words and ... if string is longer than 5 words" do
    result = snippet("hello my name is J and I like swimming.")
    expect(result).to eq "hello my name is J ..."
  end
end

