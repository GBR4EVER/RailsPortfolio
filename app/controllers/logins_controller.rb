class LoginsController < ApplicationController

  def new
  end
 
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to article_list_path
    else
      raise "Invalid login."
    end
 end

end