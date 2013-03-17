class Question < ActiveRecord::Base
	belongs_to :user
	belongs_to :offer
  attr_accessible :offer_id, :question_id, :text, :user_id
end
