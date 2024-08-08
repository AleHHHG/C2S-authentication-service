class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  def jwt_payload
    { 
      id: id,
      name: name
    }
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
