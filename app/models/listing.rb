class Listing < ActiveRecord::Base
  attr_accessible :name, :photo
  belongs_to :users
  mount_uploader :photo, PhotoUploader
end
