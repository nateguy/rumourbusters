require 'rails_helper'

RSpec.describe "UserRumours", :type => :request do
  describe "GET /user_rumours" do
    it "works! (now write some real specs)" do
      get user_rumours_path
      expect(response.status).to be(200)
    end
  end
end
