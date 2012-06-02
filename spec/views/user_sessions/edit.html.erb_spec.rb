require 'spec_helper'

describe "user_sessions/edit" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession))
  end

  it "renders the edit user_session form" do
    render

    rendered.should have_selector("form", :action => user_session_path(@user_session), :method => "post") do |form|
    end
  end
end
