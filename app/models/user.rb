class User < ActiveRecord::Base
  attr_accessible :budget, :location, :name, :pro_status
  has_and_belongs_to_many: listings
end
