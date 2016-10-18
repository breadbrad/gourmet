class UsersController < ApplicationController
  def signup
  end

  def signup_complete
    user = User.new
    user.username = params[:username]
    if params[:password] == params[:retype_password]
      user.password = params[:password]
      if user.save
        flash[:alert] = "Successfully signed up"
        redirect_to "/"
      else
        flash[:alert] = user.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert] = "Password not correct"
      redirect_to :back
    end
  end

  def login
  end

  def login_complete
  end

  def logout_complete
  end
end
