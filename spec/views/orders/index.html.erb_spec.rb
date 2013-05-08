require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :name => "Name",
        :number => 1,
        :start => "Start",
        :finish => "Finish",
        :content => "Content"
      ),
      stub_model(Order,
        :name => "Name",
        :number => 1,
        :start => "Start",
        :finish => "Finish",
        :content => "Content"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Start".to_s, :count => 2
    assert_select "tr>td", :text => "Finish".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
