class ApplicationController < ActionController::Base
  include SessionsHelper

  def hello
    render html: "Hello, World!"
  end

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please login"
      redirect_to login_url
    end
  end
end
