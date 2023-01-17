class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # respond_to do |format|
      if user&.authenticate(params[:session][:password])
        login user
        # format.html { redirect_to users_path, notice: "User was successfully created." }
        # format.json { render :show, status: :created, location: @sign_up }
        redirect_to users_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @new.errors, status: :unprocessable_entity }
        render :new, status: 422
      end
    # end
  end

  def destroy
    logout
    redirect_to root_path
  end



end
