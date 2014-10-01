class User < ActiveRecord::Base
  attr_accessible :name, :pro_status
  has_many :listings

end
