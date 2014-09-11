class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title

  def excerpt
    @article = Article.find(params[:id])
    
    if @article.truncate(params[:body], length: 30, seperator: ' ')
      return @article
    else
      render "excerpt"
    end
  end
  
end
