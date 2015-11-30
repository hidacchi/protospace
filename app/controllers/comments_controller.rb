class CommentsController < ApplicationController
  def create
    current_user.comments.create(comment_params)
    @prototype = Prototype.find(comment_params[:prototype_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :prototype_id)
  end
end
