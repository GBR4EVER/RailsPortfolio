class LikesController < ApplicationController

  def index
    redirect_to article_list_path
  end
  
  def create
    @like = Like.new(params[:like])
    
    if @like.save
      redirect_to article_list_path(session[:id])
    else
      redirect_to root_path
    end 
  end

end
