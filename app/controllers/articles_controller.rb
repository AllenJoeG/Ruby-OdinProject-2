class ArticlesController < ApplicationController
# we're going to manually spin these up rather than do the rails autocreate like we did in Ruby-OdinProject1

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "filler title" body: "lorem ipsum")

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
