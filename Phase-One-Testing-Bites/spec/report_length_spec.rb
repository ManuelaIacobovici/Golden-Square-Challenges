require "report_length"

RSpec.describe "report_length method" do
  it "returns the length of the string being passed" do
    expect(report_length("1")).to eq "This string was 1 characters long."
  end 
  it "returns the length of the string being passed" do
    expect(report_length("")).to eq "This string was 0 characters long."
  end
end






