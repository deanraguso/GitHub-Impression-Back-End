require 'rails_helper'

RSpec.describe User, type: :model do
  describe "can be created" do
    # Use let! to avoid lazy loading
    let!(:user) { User.create( 
                                username: "user1", 
                                email: "user1@sample.com",
                                password: "password1"
                                ) }
    
    it "creates a user with a default favourites list of 0 length" do
      expect(User.count).to eq(1)
    end
  end
end
