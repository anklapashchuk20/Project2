class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

end
