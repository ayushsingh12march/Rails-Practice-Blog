class ArticlesController < ApplicationController
  validates :title, presence: true, length: { minimum: 5 }
  #index
  #show /1
  #new
  #edit
  #create
  #update
  #destroy

  #Note :- Rails passes all instance variables to views
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # @article = Article.new(params[:article])  -> will throw forbidden because of security, specify which params
    # @article = Article.new(params.require(:article).permit(:title, :text))
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render "new"
    end
    # render plain: params[:article].inspect
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
