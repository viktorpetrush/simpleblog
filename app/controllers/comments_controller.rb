class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:author, :content, :commentable_type, :commentable_id)
    end
end
