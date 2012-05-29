require 'spec_helper'

describe "stories/index" do
  before(:each) do
    assign(:stories, [
      stub_model(Story,
        :title => "Title",
        :description => "MyText",
        :priority => 1
      ),
      stub_model(Story,
        :title => "Title",
        :description => "MyText",
        :priority => 1
      )
    ])
  end

  it "renders a list of stories" do
    render
    rendered.should have_content("")
  end
end
