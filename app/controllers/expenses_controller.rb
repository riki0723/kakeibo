class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
  end


  def new
    @expense = Expense.new
  end

  def create
    Expense.create(expense_params)
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    @expense.update(expense_params)
    redirect_to root_path
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to root_path
  end

  def show
    @expense = Expense.find(params[:id])
  end

  private
  def expense_params
    params.require(:expense).permit(:day, :name, :price, :wheretobuy, :category_id, :payment_id, :memo).merge(user_id: current_user.id)
  end

end
