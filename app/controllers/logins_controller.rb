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
 
 def destroy
   session[:user_id] = nil
   redirect_to article_list_path
 end

end
