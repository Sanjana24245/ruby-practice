class SessionsController < ApplicationController
  def new
    redirect_to dashboard_path if current_user
  end

  def create
    credentials = params.require(:session).permit(:email, :password)
    user = User.find_by(email: credentials[:email].to_s.strip.downcase)

    if user&.authenticate(credentials[:password])
      reset_session
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: "You are now logged in."
    else
      flash.now[:alert] = "Email or password is incorrect."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out."
  end
end