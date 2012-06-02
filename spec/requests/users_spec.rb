require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      page.status_code.should be(200)
    end
  end
end
