class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def new
  end

  def create
  end


end
