require "rails_helper"

RSpec.describe RumoursController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rumours").to route_to("rumours#index")
    end

    it "routes to #new" do
      expect(:get => "/rumours/new").to route_to("rumours#new")
    end

    it "routes to #show" do
      expect(:get => "/rumours/1").to route_to("rumours#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rumours/1/edit").to route_to("rumours#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rumours").to route_to("rumours#create")
    end

    it "routes to #update" do
      expect(:put => "/rumours/1").to route_to("rumours#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rumours/1").to route_to("rumours#destroy", :id => "1")
    end

  end
end
