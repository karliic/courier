require 'spec_helper'

describe "somethings/edit" do
  before(:each) do
    @something = assign(:something, stub_model(Something))
  end

  it "renders the edit something form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => somethings_path(@something), :method => "post" do
    end
  end
end
