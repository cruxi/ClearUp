require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    rendered.should have_selector("form", :action => projects_path, :method => "post") do |form|
      form.should have_selector("input#project_title", :name => "project[title]")
      form.should have_selector("textarea#project_description", :name => "project[description]")
    end
  end
end
