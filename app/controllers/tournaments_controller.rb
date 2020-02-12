class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find_by_id(params[:id])
  end
end
