class ExpensesController < ApplicationController

  def index
    @q = current_user.expenses.ransack(params[:q])
    @expenses = @q.result(distinct: true).page(params[:page]).per(10).order("created_at DESC")
  end


  def new
    @expense = Expense.new
  end

  def create
    @expense =Expense.new(expense_params)

    if @expense.valid?
      @expense.save
      redirect_to root_path
    else
      render 'new'
    end
    
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
