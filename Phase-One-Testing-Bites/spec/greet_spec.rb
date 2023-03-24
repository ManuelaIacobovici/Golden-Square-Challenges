require "greet"

RSpec.describe "greet method" do
  it "greet a given user" do
    result = greet("Manuela")
    expect(result).to eq "Hello, Manuela!"
  end
end