require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :name => "MyString",
      :number => 1,
      :start => "MyString",
      :finish => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_name", :name => "order[name]"
      assert_select "input#order_number", :name => "order[number]"
      assert_select "input#order_start", :name => "order[start]"
      assert_select "input#order_finish", :name => "order[finish]"
      assert_select "input#order_content", :name => "order[content]"
    end
  end
end
