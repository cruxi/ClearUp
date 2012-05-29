require 'spec_helper'

describe "stories/edit" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :title => "MyString",
      :description => "MyText",
      :priority => 1
    ))
  end

  it "renders the edit story form" do
    render

    rendered.should have_selector("form", :action => story_path(@story), :method => "post") do |form|
      form.should have_selector("input#story_title", :name => "story[title]")
      form.should have_selector("textarea#story_description", :name => "story[description]")
      form.should have_selector("input#story_priority", :name => "story[priority]")
    end
  end
end
