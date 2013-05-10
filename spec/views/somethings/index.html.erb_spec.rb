require 'spec_helper'

describe "somethings/index" do
  before(:each) do
    assign(:somethings, [
      stub_model(Something),
      stub_model(Something)
    ])
  end

  it "renders a list of somethings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
