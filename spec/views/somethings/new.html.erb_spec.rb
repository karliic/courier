require 'spec_helper'

describe "somethings/new" do
  before(:each) do
    assign(:something, stub_model(Something).as_new_record)
  end

  it "renders new something form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => somethings_path, :method => "post" do
    end
  end
end
