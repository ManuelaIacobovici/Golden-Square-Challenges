require "grammar_stats"

RSpec.describe GrammarStats do
  context "it should return the persentage of text that passed the test" do
		it "returns 0%" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.percentage_good).to eq "0%"
		end

    it "returns 100%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello!")
      expect(grammar_stats.percentage_good).to eq "100%"
		end

    it "returns 50%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello!")
      grammar_stats.check("hello!")
      expect(grammar_stats.percentage_good).to eq "50%"
		end

    it "returns 100%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello.")
      expect(grammar_stats.percentage_good).to eq "100%"
		end

    it "returns 100%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello?")
      expect(grammar_stats.percentage_good).to eq "100%"
		end

    it "returns 0%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("")
      expect(grammar_stats.percentage_good).to eq "0%"
		end

    it "returns 0%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check(1)
      expect(grammar_stats.percentage_good).to eq "0%"
		end

    it "returns 100%" do
      grammar_stats = GrammarStats.new
      grammar_stats.check(1)
      grammar_stats.check("Hi!")
      expect(grammar_stats.percentage_good).to eq "100%"
		end
  end
end