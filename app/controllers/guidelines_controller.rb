class GuidelinesController < ApplicationController
  def index
    @states = Guidelines.select("name, state")
  end

  def show
    @guidelines = Guidelines.find_by_state(params[:id])

    if @guidelines.nil?
      redirect_to guidelines_path, :alert => "Invalid state"
    end

  end

end
