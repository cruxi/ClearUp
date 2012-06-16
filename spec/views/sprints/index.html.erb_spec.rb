require 'spec_helper'

describe "sprints/index" do
  before(:each) do
    assign(:sprints, [
      stub_model(Sprint),
      stub_model(Sprint)
    ])
  end

  it "renders a list of sprints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
