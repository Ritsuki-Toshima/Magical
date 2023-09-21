class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end

  def edit
    @comment = Comment.new
  end

  def update
  end

  def delete
  end

  private
  def comment_params
     params.require(:comment).permit(:content, )
  end
end
