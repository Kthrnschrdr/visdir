class User < ActiveRecord::Base
  attr_accessible :budget, :location, :name, :pro_status
end
