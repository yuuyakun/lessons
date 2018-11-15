class MissionsController < ApplicationController

  def index
    @missions = Mission.all.order(created_at: :desc)
  end

  def new
  end

  def create

    @mission =Mission.new(content: params[:content])
    @mission.save

    redirect_to("/missions/index")
  end


end
