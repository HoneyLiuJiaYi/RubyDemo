class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html {
        unless current_user
          redirect_to login_url
        end
      }
    end
    # if current_user
    #   render :json => {:notice => 'success'}
    # else
    #   render :json => {:notice => 'fail'}
    # end
  end
end
