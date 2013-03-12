class Question < ActiveRecord::Base
  attr_accessible :offer_id, :question_id, :text, :user_id
end
