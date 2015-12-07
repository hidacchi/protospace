class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.order('created_at DESC').page(params[:page])
    render 'top/index'
  end
end
