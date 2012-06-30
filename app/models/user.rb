class User < ActiveRecord::Base

 attr_accessible :name, :login, :email, :password, :password_confirmation, :status
 has_and_belongs_to_many :projects

 has_many :projects

def before_save()
  if User.exists? 
      @user[:status]="member"
    else 
      @user[:status]="admin"
    end
end


acts_as_authentic do |config|
      config.crypto_provider = Authlogic::CryptoProviders::MD5
end # the configuration block is optional

end