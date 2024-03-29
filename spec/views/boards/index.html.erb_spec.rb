require 'spec_helper'

describe "boards/index" do
  before(:each) do
    assign(:boards, [
      stub_model(Board,
        :title => "Title"
      ),
      stub_model(Board,
        :title => "Title"
      )
    ])
  end

  it "renders a list of boards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
