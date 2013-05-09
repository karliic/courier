require 'spec_helper'

describe "deliveries/edit" do
  before(:each) do
    @delivery = assign(:delivery, stub_model(Delivery))
  end

  it "renders the edit delivery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliveries_path(@delivery), :method => "post" do
    end
  end
end
