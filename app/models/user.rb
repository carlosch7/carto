class User < ActiveRecord::Base
	authenticates_with_sorcery!
    attr_accessible :email, :password, :password_confirmation
    validates_confirmation_of :password
  validates :password, presence: true, length: { minimum: 6 }
  #validates :password_confirmation, presence: true
   validates :email, uniqueness: true
end
