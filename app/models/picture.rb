
class Picture < ActiveRecord::Base
	has_many :comments 
	has_many :likes
	has_many :reviews
	has_many :users, through: :comments

	mount_uploader :image, AvatarUploader
end
