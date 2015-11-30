class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.includes(:user, :thumbnails).find(params[:id])
    @prototype_image = @prototype.thumbnails.main.first.image

    @new_comment = Comment.new
    @comments = @prototype.comments
  end

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    Prototype.find(params[:id]).update(update_params)
    redirect_to root_path
  end

  def destroy
    prototype = Prototype.find(params[:id])
    if prototype.user_id == current_user.id
      prototype.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:image, :status])
  end

  def update_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:id, :image, :status]).merge(user_id: current_user.id)
  end
end
