require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :name => "MyString",
      :number => 1,
      :start => "MyString",
      :finish => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_name", :name => "order[name]"
      assert_select "input#order_number", :name => "order[number]"
      assert_select "input#order_start", :name => "order[start]"
      assert_select "input#order_finish", :name => "order[finish]"
      assert_select "input#order_content", :name => "order[content]"
    end
  end
end
