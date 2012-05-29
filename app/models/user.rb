class User < ActiveRecord::Base
  attr_accessible :crypted_password, :current_login_at, :current_login_ip, :email, :failed_login_count, :last_login_at, :last_login_ip, :last_request_at, :login, :login_count, :password_salt, :perishable_token, :persistence_token, :single_access_token
end
