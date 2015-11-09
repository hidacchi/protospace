class TopController < ApplicationController
  def index
    @prototypes = Prototype.page(params[:page]).per(10).order('id DESC')
  end
end
