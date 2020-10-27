class PlansController < ApplicationController
  def index
    @expenses = current_user.expenses.all.order("created_at DESC")
  end
end
