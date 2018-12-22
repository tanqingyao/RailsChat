class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember_user(user) : forget_user(user)
      flash.now[:success] = '欢迎回来: #{user.name} :)'
      redirect_to user
    else
      flash.now[:danger] = '无效的账号或密码'
      render 'new'
    end
    
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
