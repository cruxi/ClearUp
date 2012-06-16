require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :title => "MyString",
      :weight => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_title", :name => "task[title]"
      assert_select "input#task_weight", :name => "task[weight]"
      assert_select "textarea#task_description", :name => "task[description]"
    end
  end
end
