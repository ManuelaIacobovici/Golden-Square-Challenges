# require 'present'

# RSpec.describe Present do
#     context "determine if contents are wrapped" do
#       content = Present.new()
#       it "fails" do
#         expect { content.unwrap()}.to raise_error "No contents have been wrapped."
#       end

#       it "fails" do
#         content.wrap("123")
#         expect { content.wrap("123")}.to raise_error "A contents has already been wrapped."
#       end
#     end
# end

require 'present'

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(3)
    expect(present.unwrap).to eq 3
  end
  
  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "fails if we wrap if we've already wrapped" do
    present = Present.new
    present.wrap(3)
    expect { present.wrap(7) }.to raise_error "A contents has already been wrapped."
    expect(present.unwrap).to eq 3
  end
end