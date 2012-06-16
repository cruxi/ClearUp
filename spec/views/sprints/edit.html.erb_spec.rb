require 'spec_helper'

describe "sprints/edit" do
  before(:each) do
    @sprint = assign(:sprint, stub_model(Sprint))
  end

  it "renders the edit sprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sprints_path(@sprint), :method => "post" do
    end
  end
end
