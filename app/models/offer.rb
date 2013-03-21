class Offer < ActiveRecord::Base
	belongs_to :user
	belongs_to :platform_title
	has_many :offer_images
	has_many :questions
	attr_accessible :title, :price, :text, :offer_images_attributes
	attr_accessor :title, :price, :text, :offer_images_attributes
  accepts_nested_attributes_for :offer_images
end
