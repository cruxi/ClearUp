require 'spec_helper'

describe "stories/new" do
  before(:each) do
    assign(:story, stub_model(Story,
      :title => "MyString",
      :description => "MyText",
      :priority => 1
    ).as_new_record)
  end

  it "renders new story form" do
    render

    rendered.should have_selector("form", :action => stories_path, :method => "post") do |form|
      form.should have_selector("input#story_title", :name => "story[title]")
      form.should have_selector("textarea#story_description", :name => "story[description]")
      form.should have_selector("input#story_priority", :name => "story[priority]")
    end
  end
end
