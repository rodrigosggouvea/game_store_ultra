class PlatformTitle < ActiveRecord::Base
	belongs_to :title
	belongs_to :platform
	has_many :offers
  attr_accessible :platform_id, :title_id
end
