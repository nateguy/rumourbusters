require "rails_helper"

RSpec.describe UserRumoursController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_rumours").to route_to("user_rumours#index")
    end

    it "routes to #new" do
      expect(:get => "/user_rumours/new").to route_to("user_rumours#new")
    end

    it "routes to #show" do
      expect(:get => "/user_rumours/1").to route_to("user_rumours#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_rumours/1/edit").to route_to("user_rumours#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_rumours").to route_to("user_rumours#create")
    end

    it "routes to #update" do
      expect(:put => "/user_rumours/1").to route_to("user_rumours#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_rumours/1").to route_to("user_rumours#destroy", :id => "1")
    end

  end
end
