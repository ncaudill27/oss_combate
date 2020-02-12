class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find_by_id(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    
  end
  
  private

  def tournament_params
    params.require(:tournament).permit(:organization, :url, :date, :registration_open, :registration_close)
  end
end
