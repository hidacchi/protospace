class TopController < ApplicationController
  def index
    @prototypes = Prototype.page(params[:page]).order(id: :DESC)
  end
end
