class Offer < ActiveRecord::Base
	belongs_to :user
	belongs_to :platform_title
	has_many :offer_images

	
  attr_accessible :platform_title_id, :price, :text, :user_id, :title, :offer_images_attributes
  accepts_nested_attributes_for :offer_images
end
