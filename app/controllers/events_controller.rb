class EventsController < ApplicationController

  def create
      Event.create(
      tournament_id: params[:tournament_id],
      user_id: current_user.id
    )

    redirect_to current_user
  end

  def update
  end

  def destroy
  end
end