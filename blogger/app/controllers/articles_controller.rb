class ArticlesController < ApplicationController
    include ApplicationHelper
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
        @article = Article.new(article_params)
        @article.save
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find_by_id(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    def edit
        @article = Article.find_by_id(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)

        redirect_to article_path(@article)

end
