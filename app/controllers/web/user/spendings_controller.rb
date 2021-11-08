class Web::User::SpendingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find_by(id: params[:user_id])
    q = { shared_to_user_id: current_user.id, user_id: @user.id }
    @shared_to_user = Sharing.find_by(q)

    if @shared_to_user
      @q = @user.spendings.ransack(params[:q])
      @spendings = @q.result
    else
      redirect_to(:spendings)
    end
  end
end
