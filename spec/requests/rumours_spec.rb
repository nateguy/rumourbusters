require 'rails_helper'

RSpec.describe "Rumours", :type => :request do
  describe "GET /rumours" do
    it "works! (now write some real specs)" do
      get rumours_path
      expect(response.status).to be(200)
    end
  end
end
