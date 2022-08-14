class OrdersController < ApplicationController
  def new
    @order = Order.new
    @mission = Mission.find(params[:mission_id])
    @crew_members = CrewMember.where.not(id: @mission.crew_members).order(name: :asc)
  end

  def create
    @order = Order.new(order_params)
    @mission = Mission.find(params[:mission_id])
    @order.mission = @mission
    if @order.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:comment, :crew_member_id)
  end
end
