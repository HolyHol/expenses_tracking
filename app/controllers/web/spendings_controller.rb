class Web::SpendingsController < Web::ApplicationController
  def new
    @spending = Spending.new
  end
  before_action :authenticate_user!
  def index
    @q = current_user.spendings.ransack(params[:q])
    @spendings = @q.result
  end

  def create
    @spending = current_user.spendings.new(spending_params)

    if @spending.save
      redirect_to(spendings_path)
    else
      render(:new)
    end
  end

  def edit
    @spending = current_user.spendings.find(params[:id])
  end

  def update
    @spending = current_user.spendings.find(params[:id])

    if @spending.update(spending_params)
      redirect_to(spendings_path)
    else
      render(:edit)
    end
  end

  def destroy
    @spending = current_user.spendings.find(params[:id])
    @spending.destroy
    redirect_to(spendings_path)
  end

  private

  def spending_params
    params.require(:spending).permit(:description, :amount, :category_id)
  end
end
