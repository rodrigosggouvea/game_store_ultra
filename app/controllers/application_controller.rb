class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :under_construction

  def index
  end

  def under_construction
  	if (Rails.env == "development" || Rails.env == "test")
  		render "index" 
  	else
	  	render "under_construction"
  	end
	end
end
