require "gratitudes"

RSpec.describe Gratitudes do
  it "returns added gratitude words" do
    gratitudes = Gratitudes.new
    gratitudes.add('word1')
    gratitudes.add('word2')
    gratitudes.add('word3')
    result = gratitudes.format
    expect(result).to eq "Be grateful for: word1, word2, word3"
  end  
end