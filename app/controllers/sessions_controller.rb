class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:name => user_params[:name]).try(:authenticate, user_params[:password])
    if user
      # session[:current_user_id] = user.id
      @uuid = rand(0xffffff)
      session[:current_uuid] = @uuid
      session[:current_user] = user.id
      redirect_to root_url
      #render plain: sprintf("welcome, %s!", user.name)
    else
      flash.now[:login_error] = "invalid username or password"
      render "new"
    end
  end

  def destroy
    session[:current_uuid] = nil
    flash[:notice] = "你已经成功退出"
    redirect_to root_url
  end

  private
  def user_params
    params.require(:session).permit(:name, :password)
  end
end
