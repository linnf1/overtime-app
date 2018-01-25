require 'rails_helper'

RSpec.describe User, type: :model do
    before do 
      @user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "John", last_name: "Snow")
    end
    
  describe "creation" do 
    it "is created" do
      expect(@user).to be_valid
    end
    
    it "cannot be crreated without first_name and last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
  
  describe "custom name methods" do
    it 'has a full name method combines first and last' do
      expect(@user.full_name).to eq("SNOW, JOHN")
    end
  
  
  end
end
