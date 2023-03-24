require "password_checker"

RSpec.describe PasswordChecker do
    it "password length is >= 8" do
       password = PasswordChecker.new
    expect(password.check("HelloRuby")).to eq true
    end

    it "password length is < 8" do
        password = PasswordChecker.new
     expect { password.check("Hello") }.to raise_error "Invalid password, must be 8+ characters."
     end
end