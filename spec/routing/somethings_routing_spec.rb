require "spec_helper"

describe SomethingsController do
  describe "routing" do

    it "routes to #index" do
      get("/somethings").should route_to("somethings#index")
    end

    it "routes to #new" do
      get("/somethings/new").should route_to("somethings#new")
    end

    it "routes to #show" do
      get("/somethings/1").should route_to("somethings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/somethings/1/edit").should route_to("somethings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/somethings").should route_to("somethings#create")
    end

    it "routes to #update" do
      put("/somethings/1").should route_to("somethings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/somethings/1").should route_to("somethings#destroy", :id => "1")
    end

  end
end
