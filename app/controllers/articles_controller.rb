class ArticlesController < ApplicationController
  before_action :set_article,only:[:show,:edit,:update,:destroy]
  def index
    @articles=Article.all
  end

  def new
    @Article=Article.new
  end

  def show
  end

  def edit
  end
  

  def create
    @Article=Article.new(articles_params)
    @Article.user_id=current_user.id
    @Article.save
    redirect_to articles_path
  end

  def update
    @Article.update(articles_params)
    redirect_to articles_path
  end

  def destroy
    @Article.destroy
    redirect_to articles_url
  end

  def set_article
    @Article=Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :description, :user_id)
  end

end