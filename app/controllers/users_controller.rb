class UsersController < ApplicationController

  # before_action :authenticate_user! #そもそもview側でif分使ってユーザーページの表示、非表示を管理しているのでいらない。

  def show
  end

  def new
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :avatar)
  end
end
