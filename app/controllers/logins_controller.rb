class LoginsController < ApplicationController

  def new
  end
 
  def create
    # Check if the email/password is a match to log someone in.
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_path
    else
      raise "Invalid login."
    end
 end

end
