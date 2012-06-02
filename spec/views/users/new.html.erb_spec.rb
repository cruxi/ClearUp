require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :login => "MyString",
      :mail => "MyString",
      :password => "MyString",
      :persistence_token => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :single_access_token => "MyString",
      :perishable_token => "MyString",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "MyString",
      :last_login_ip => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    rendered.should have_selector("form", :action => users_path, :method => "post") do |form|
      form.should have_selector("input#user_name", :name => "user[name]")
      form.should have_selector("input#user_login", :name => "user[login]")
      form.should have_selector("input#user_mail", :name => "user[mail]")
      form.should have_selector("input#user_password", :name => "user[password]")
      form.should have_selector("input#user_persistence_token", :name => "user[persistence_token]")
      form.should have_selector("input#user_crypted_password", :name => "user[crypted_password]")
      form.should have_selector("input#user_password_salt", :name => "user[password_salt]")
      form.should have_selector("input#user_single_access_token", :name => "user[single_access_token]")
      form.should have_selector("input#user_perishable_token", :name => "user[perishable_token]")
      form.should have_selector("input#user_login_count", :name => "user[login_count]")
      form.should have_selector("input#user_failed_login_count", :name => "user[failed_login_count]")
      form.should have_selector("input#user_current_login_ip", :name => "user[current_login_ip]")
      form.should have_selector("input#user_last_login_ip", :name => "user[last_login_ip]")
      form.should have_selector("input#user_status", :name => "user[status]")
    end
  end
end
