class Web::CurrentUser::SharingsController < ApplicationController
  def new
    @sharing = Sharing.new
  end

  def create
    @sharing = current_user.sharings.new(sharing_params)
    if @sharing.save
      redirect_to(spendings_path)
    else
      flash[:notice] = "Can't find a user with this id"
      render(:new)
    end
  end

  private

  def sharing_params
    params.require(:sharing).permit(:shared_to_user_id, :user_id)
  end
end
