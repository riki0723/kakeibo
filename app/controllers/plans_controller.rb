class PlansController < ApplicationController
  def index
    @expenses = current_user.expenses.all.order("created_at DESC")
    @plans = current_user.plans.all
  end

  def new
    @plan = Plan.new
  end

  def create
    Plan.create(plan_params)
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    plan = Plan.find(params[:id])
    plan.update(plan_params)
  end




  private
  def plan_params
    params.require(:plan).permit(:start_time, :name, :price, :payment_id, :memo).merge(user_id: current_user.id)
  end
end
