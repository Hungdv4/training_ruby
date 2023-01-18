class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        login @user
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        remember @user
        redirect_to @users_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render :new, status: 422
      end
  end

  def destroy
    logout if logged_in?
    redirect_to root_path
  end



end
