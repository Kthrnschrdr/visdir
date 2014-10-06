class Listing < ActiveRecord::Base
  attr_accessible :name, :photo, :location, :budget, :user_id
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
