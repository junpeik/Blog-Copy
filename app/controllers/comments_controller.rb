class CommentsController < ApplicationController
  def create
  	@article = Article.find(params[:article_id])
  	@comment = @article.comments.create(comment_params)
  	redirect_to article_path(@article.id)
  end
=begin
  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to article_path(params[:article_id])
  end
=end
  private

    def comment_params
      params[:comment].permit(:body)
    end
end
