class KakeibosController < ApplicationController

  def index
    @expenses = current_user.expenses.all
    @plans = current_user.plans.all
  end


end
