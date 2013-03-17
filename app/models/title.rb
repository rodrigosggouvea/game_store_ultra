class Title < ActiveRecord::Base
	has_many :platform_titles
	has_many :offers, :through => :platform_titles
	has_many :platforms, :through => :platform_titles
  attr_accessible :name, :producer_id
end
