class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy]
 
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]  

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
