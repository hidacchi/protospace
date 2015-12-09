class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.order('created_at DESC').page(params[:page])
    #render 'top/index' #これがないとnewestコントローラー配下を見に行っちゃうので必要
  end
end
