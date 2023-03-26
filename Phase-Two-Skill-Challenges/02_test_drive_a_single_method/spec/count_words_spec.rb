# A method called count_words that 
# takes a string as an argument and 
# returns the number of words in that string.

require "count_words"

RSpec.describe "count_words method" do
  it "take an empty string and returns 0" do
      result = count_words("")
      expect(result).to eq 0
      end
  
  it "take a string with one word and return number 1" do
  result = count_words("one")
  expect(result).to eq 1
  end

  it "take a string with more than one word and return number of words" do
    result = count_words("Hello Ruby !")
    expect(result).to eq 3
  end

  it "takes any integer and returns an error" do
    expect { count_words(123) }.to raise_error "not a string"
  end
end