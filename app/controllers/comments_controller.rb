class CommentsController < ApplicationController

  def new
    @comment = Comment.new(comment_params)
  end

  def destroy
    @comment.destroy!
  end
    
  private
    
  def comment_params
    params.require(:comment).permit(:body).merge(jellyfish_id: params[:jellyfish_id])
  end
end
