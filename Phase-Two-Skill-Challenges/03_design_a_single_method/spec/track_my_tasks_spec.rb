require "track_my_tasks"

RSpec.describe "track_my_tasks method" do
  context "given an empty string" do
    it "fails" do
      expect { track_my_tasks("") }.to raise_error "Not a task."
    end  
  end  
  
  context "argument is not a string" do
    it "fails" do
      expect { track_my_tasks(1234) }.to raise_error "Not a string."
    end  
  end 

  context "is not an exact match" do
    it "returns false for #to_do" do
     result = track_my_tasks("#to_do")
     expect(result).to eq false
    end

    it "returns false for #To Do" do
     result = track_my_tasks("#To Do")
     expect(result).to eq false
    end


    it "returns false for #to do" do
     result = track_my_tasks("#to do")
     expect(result).to eq false
    end


    it "returns false for TODO" do
     result = track_my_tasks("TODO")
     expect(result).to eq false
    end
  end


  context "contains our string inside" do
    it "returns true for #TODO?" do
      result = track_my_tasks("#TODO?")
      expect(result).to eq true
      end
    end


  context "is an exact match to our sting" do
    it "returns true for #TODO" do
      result = track_my_tasks("#TODO")
      expect(result).to eq true
      end
    end
end