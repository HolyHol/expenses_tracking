class Web::User::SpendingsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @q = @user.spendings.ransack(params[:q])
    @spendings = @q.result
  end
end
