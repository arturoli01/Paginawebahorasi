class Api::V1::ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def return_all_articles
    user_id_params=params[:user_id]
    article_title=params[:title]
    all_articles=Article.where(user_id:user_id_params,title:article_title)
    if all_articles.empty?
      render json:{respond:"Data not found"}
      else
    json_all_articles=all_articles.to_json
    render json:json_all_articles
    end
  end
end