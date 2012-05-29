class User < ActiveRecord::Base

  attr_accessible :name, :login, :email, :password, :password_confirmation
  
acts_as_authentic do |config|
      config.crypto_provider = Authlogic::CryptoProviders::MD5
    end # the configuration block is optional
end