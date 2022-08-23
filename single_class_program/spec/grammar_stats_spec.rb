require "grammar_stats"

RSpec.describe "grammer_stats class" do
  it "checks grammer" do
    stats = GrammarStats.new
    expect(stats.check("Hello!")).to eq true
  end

  it "doesn't end with a suitable puntuation mark." do
    stats = GrammarStats.new
    expect(stats.check("Hello")).to eq false
  end

  it "doesn't start with a capital letter but end in a suitable puntuation mark" do
    stats = GrammarStats.new
    expect(stats.check("hello!")).to eq false
  end

  it "returns 50" do 
    stats = GrammarStats.new
    stats.check("Hello")
    stats.check("Hello!")
    expect(stats.percentage_good).to eq 50
  end

end

