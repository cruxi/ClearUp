require 'spec_helper'

describe "columns/show" do
  before(:each) do
    @column = assign(:column, stub_model(Column,
      :title => "Title",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
  end
end
