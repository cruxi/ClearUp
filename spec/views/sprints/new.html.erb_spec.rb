require 'spec_helper'

describe "sprints/new" do
  before(:each) do
    assign(:sprint, stub_model(Sprint).as_new_record)
  end

  it "renders new sprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sprints_path, :method => "post" do
    end
  end
end
