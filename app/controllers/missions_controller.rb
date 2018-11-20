class MissionsController < ApplicationController
  before_action :authenticate_user

  def index
    @missions = Mission.all.order(created_at: :desc)
  end

  def new
    @mission= Mission.new
  end

  def create
    @mission =Mission.new(content: params[:content])
    if @mission.save
      flash[:notice]="投稿しました"
      redirect_to("/missions/index")
    else
      render("missions/new")
    end

  end
end
