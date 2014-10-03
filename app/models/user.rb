class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessible :name, :pro_status, :email, :password, :password_confirmation
  has_many :listings
  
  accepts_nested_attributes_for :listing, :allow_destroy => true, :reject_if => :listing_is_blank
  
  validates :name, presence: true
  validates :email,  presence: true, uniqueness: true
  validates :password, presence: true , confirmation: true
  validates :password_confirmation, presence: true

  def listing_is_blank(attrs)
      if attrs['photo'].blank?
        true
      else
        false
      end
    end
end
