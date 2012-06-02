require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :mail => "Mail",
        :password => "Password",
        :persistence_token => "Persistence Token",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :single_access_token => "Single Access Token",
        :perishable_token => "Perishable Token",
        :login_count => 1,
        :failed_login_count => 2,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip",
        :status => "Status"
      ),
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :mail => "Mail",
        :password => "Password",
        :persistence_token => "Persistence Token",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :single_access_token => "Single Access Token",
        :perishable_token => "Perishable Token",
        :login_count => 1,
        :failed_login_count => 2,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip",
        :status => "Status"
      )
    ])
  end

  it "renders a list of users" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Login".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Mail".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Password".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Persistence Token".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Crypted Password".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Password Salt".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Single Access Token".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Perishable Token".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 2.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Current Login Ip".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Last Login Ip".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Status".to_s, :count => 2)
  end
end
