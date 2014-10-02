class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessible :name, :pro_status, :email, :password, :password_confirmation
  has_many :listings
  
  validates :name, presence: true
  validates :email,  presence: true, uniqueness: true
  validates :password, presence: true , confirmation: true
  validates :password_confirmation, presence: true

end
