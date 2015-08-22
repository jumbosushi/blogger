class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find_by_id(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new (
        title: params[:article][:title]
        body: params[:article][:body])
        @article.save
        redirect_to article_path(@article)

    end
end
