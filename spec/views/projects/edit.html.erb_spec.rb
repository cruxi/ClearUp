require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    rendered.should have_selector("form", :action => project_path(@project), :method => "post") do |form|
      form.should have_selector("input#project_title", :name => "project[title]")
      form.should have_selector("textarea#project_description", :name => "project[description]")
    end
  end
end
