class HomeController < ApplicationController
  def index
    if params[:state]
      redirect_to register_new_path(params[:state])
    end
  end
end
