require "string_builder"

RSpec.describe StringBuilder do
  it "initially returns an empty string as output" do
    str1 = StringBuilder.new
    expect(str1.output).to eq ""
  end

  it "initially returns a length of 0" do
    str1 = StringBuilder.new
    expect(str1.size).to eq 0
  end

  context "Given many additions of strings" do
    it "returns length of mutliple strings" do
      str1 = StringBuilder.new
      str1.add("Hello ")
      str1.add("World")
      str1.add("!")
      expect(str1.size).to eq 12
    end

    it "returns concatenated string inputs" do
      str1 = StringBuilder.new
      str1.add("Hello ")
      str1.add("World")
      str1.add("!")
      expect(str1.output).to eq "Hello World!"
    end
  end
end