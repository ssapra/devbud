class UsersController < ApplicationController
  skip_before_filter :require_login

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to verification_sent_path
    else
      render 'home/index'
    end
  end

  def verification_sent
  end

   def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :type)
  end
end
