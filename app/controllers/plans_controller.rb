class PlansController < ApplicationController
  def index
    @expenses = current_user.expenses.all.order("created_at DESC")
    @plans = current_user.plans.all
  end
end
