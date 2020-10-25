class ExpensesController < ApplicationController

  def index
    @expenses = current_user.expenses.all.order("created_at DESC")
    

    @q = current_user.expenses.ransack(params[:q])
    @expenses = @q.result(distinct: true).page(params[:page]).per(10)
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
    params.require(:expense).permit(:start_time, :name, :price, :wheretobuy, :category_id, :payment_id, :memo).merge(user_id: current_user.id)
  end

end
