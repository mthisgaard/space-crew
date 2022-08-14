class MissionsController < ApplicationController
  def new
    @mission = Mission.new
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def create
    @mission = Mission.new(mission_params)
    if @mission.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:name, :description)
  end
end
