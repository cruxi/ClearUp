require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain("Login".to_s)
    rendered.should contain("Mail".to_s)
    rendered.should contain("Password".to_s)
    rendered.should contain("Persistence Token".to_s)
    rendered.should contain("Crypted Password".to_s)
    rendered.should contain("Password Salt".to_s)
    rendered.should contain("Single Access Token".to_s)
    rendered.should contain("Perishable Token".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(2.to_s)
    rendered.should contain("Current Login Ip".to_s)
    rendered.should contain("Last Login Ip".to_s)
    rendered.should contain("Status".to_s)
  end
end
