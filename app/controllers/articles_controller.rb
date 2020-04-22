class ArticlesController < ApplicationController

  #index
  #show /1
  #new
  #edit
  #create
  #update
  #destroy

  #Note :- Rails passes all instance variables to views
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # @article = Article.new(params[:article])  -> will throw forbidden because of security, specify which params
    # @article = Article.new(params.require(:article).permit(:title, :text))
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
    # render plain: params[:article].inspect
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
