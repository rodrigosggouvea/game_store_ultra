#encoding: UTF-8
class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(env["omniauth.auth"])
    
    respond_to do |format|
      format.html { 
		    session[:user_id] = @user.id
      	redirect_to root_url 
      }
      format.json { render json: @user, status: :created, location: @user }
    end
  end

  def destroy
    respond_to do |format|
      format.html {
		    session[:user_id] = nil
	      redirect_to root_url 
	    }
      format.json { head :no_content }
    end
  end
end

