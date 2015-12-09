class Prototypes::PopularController < ApplicationController
  def index
    @prototypes = Prototype.order('likes_count DESC').page(params[:page])
    #render "top/index"
  end
end
