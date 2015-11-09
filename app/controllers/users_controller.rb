class UsersController < ApplicationController

  # before_action :authenticate_user!, only: [:show]

  def show
    @user = User.includes(:prototypes).find(params[:id])
    @prototypes = @user.prototypes.page(params[:page])
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :works, :avatar)
  end
end
