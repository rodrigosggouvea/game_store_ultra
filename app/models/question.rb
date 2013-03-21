class Question < ActiveRecord::Base
	belongs_to :user
	belongs_to :offer
  attr_accessible :offer_id, :question_id, :text, :user_id
  attr_accessor :offer_id, :question_id, :text, :user_id
  validates :offer_id, :presence => true
  validates :user_id, :presence => true
  validates :text, :presence => true
end
