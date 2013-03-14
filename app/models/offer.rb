class Offer < ActiveRecord::Base
	belgons_to :platform_title
	belongs_to :title, :through => :platform_title
  attr_accessible :platform_title_id, :price, :text, :user_id
end
