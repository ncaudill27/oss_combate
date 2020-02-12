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
    @tournament = Tournament.create(tournament_params)

    redirect_to @tournament
  end

  def edit
    @tournament = Tournament.find_by_id(params[:id])
  end

  def update
    @tournament = Tournament.find_by_id(params[:id])
    @tournament.update(tournament_params)

    redirect_to @tournament
  end
  
  private

  def tournament_params
    params.require(:tournament).permit(:organization, :url, :date, :registration_open, :registration_close)
  end
end
