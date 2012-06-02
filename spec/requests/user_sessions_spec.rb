require 'spec_helper'

describe "UserSessions" do
  describe "GET /user_sessions" do
    it "works! (now write some real specs)" do
      get user_sessions_path
      page.status_code.should be(200)
    end
  end
end
