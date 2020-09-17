class ExpensesController < ApplicationController
  def index
    @expenses = expense.all
  end
end
