class CommentsController < ApplicationController

  def index
    @article = Article.find(params[:article_id])
    @comment = @article.comments
    @comment_count = count_comments
  end

  def show 
    @article = Article.find(params[:article_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end


    def count_comments
      @article = Article.find(params[:article_id])
      total = @article.comments.count
      total 
    end
end
