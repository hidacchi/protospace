class LikesController < ApplicationController
  def create
    current_user.likes.create(prototype_id: params[:id])
    @prototype = Prototype.find params[:id]
  end
  def destroy
    current_user.likes.find_by(prototype_id: params[:id]).destroy
    @prototype = Prototype.find params[:id]
  end
  # def create
  #   Like.create(prototype_id: params[:prototype_id], user_id: current_user.id)
  #   @prototype = Prototype.find(params[:prototype_id])
  # end

  # def destroy
  #   current_user.likes.find_by(prototype_id: params[:prototype_id]).destroy
  #   @prototype = Prototype.find(params[:prototype_id])
  # end
end
