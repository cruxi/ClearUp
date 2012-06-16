require 'spec_helper'

describe "columns/new" do
  before(:each) do
    assign(:column, stub_model(Column,
      :title => "MyString",
      :position => 1
    ).as_new_record)
  end

  it "renders new column form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => columns_path, :method => "post" do
      assert_select "input#column_title", :name => "column[title]"
      assert_select "input#column_position", :name => "column[position]"
    end
  end
end
