require 'spec_helper'

describe "Somethings" do
  describe "GET /somethings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get somethings_path
      response.status.should be(200)
    end
  end
end
