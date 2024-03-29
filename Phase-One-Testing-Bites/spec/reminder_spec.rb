require "reminder"

# We use the class name here rather than a sting
RSpec.describe Reminder do
   it "reminds the user to do a task" do
     reminder = Reminder.new("Manuela")
     reminder.remind_me_to("Walk the dog")
     result = reminder.remind()
     expect(result).to eq "Walk the dog, Manuela!"
   end

  # We would typically have a number of these examples.
end