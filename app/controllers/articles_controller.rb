
class ArticlesController < ApplicationController

  http_basic_authenticate_with name: Rails.application.credentials.development[:admin][:username] , password: Rails.application.credentials.development[:admin][:password], except: [:index, :show]
  def index
    @articles = Article.all
  end

  def admin
    @articles = Article.all
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.create!(article_params)
  end
 
  def update
    @article = Article.find(params[:id])
 
    if !@article.update(article_params) 
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end