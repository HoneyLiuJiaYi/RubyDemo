class ApplicantsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #redirect_to :sessions_new
      #render :json => { :notice => "notice" }
      render :json => {:notice => "success"}
    else
      #render :action => 'new'
      render :json => {:notice => "fail"}
    end
  end

  def show
  end

  def love
  end

  private
  def user_params
    params.permit(:name, :password, :password_confirmation)
  end
end
