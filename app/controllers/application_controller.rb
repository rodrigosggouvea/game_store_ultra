class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :under_construction

  def index
    ap session
    debugger
  end

  def under_construction
  	if (Rails.env == "development" || Rails.env == "test")
  		render "index" 
  	else
	  	render "under_construction"
  	end
	end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
