class SessionsController < ApplicationController
  def new
  end

  def create
    admin_params = params.require(:session)

    admin = Admin.find_by(email: admin_params[:email])&.authenticate(admin_params[:password])

    if admin.present?
      session[:admin_id] = admin.id
      redirect_to root_path, notice: "You have successfully logged in"
    else
      flash.now[:alert] = "Incorect email or password"
      render :new
    end
  end

  def destroy
    session.delete(:admin_id)

    redirect_to root_path
  end
end
