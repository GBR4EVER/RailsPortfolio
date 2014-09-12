class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    
    if @article.save
      redirect_to article_list_path
    else
      render "new"
    end
  end
  
  def edit
    @existing_article = Article.find(params[:id])
  end
  
  def update
    @existing_article = Article.find(params[:id])
    
    if @existing_article.update_attributes(params[:article])
      redirect_to article_list_path(@existing_article.id)
    else
      render "edit"
    end
  end
  
  def show
    @article = Article.find(params[:id])
    @like = Like.new
    
    @all_likes = Like.where({article_id: params[:id]})
    
    @ip = true
    
    @all_likes.each do |a|
      if a.ip_address == request.remote_ip
        @ip = false
      end
    end
  end
  
  def destory
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to article_list_path
  end
  
      
end
