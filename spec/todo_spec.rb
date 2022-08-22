require 'todo'

RSpec.describe "todo" do
  describe "to do method" do
    it "returns true if '#TODO' is within the string" do
    expect(todo("Drink 3 litres of water a day #TODO")).to eq true
    end
    it "reuturns false if '#TODO' is not within the string" do
    expect(todo("Practice yoga for 15mins")).to eq false
    end
  end
end