class ExpensesController < ApplicationController


  def new
    @expense = Expense.new
  end

  def create
    Expense.create(expense_params)
  end

  private
  def expense_params
    params.require(:expense).permit(:day, :name, :price, :wheretobuy, :category_id, :payment_id, :memo).merge(user_id: current_user.id)
  end

end
