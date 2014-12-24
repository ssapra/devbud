class SessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
      if @user.type == "Student"
        redirect_back_or_to(student_path(@user), notice: 'Login successful')
      else
        redirect_back_or_to(client_path(@user), notice: 'Login successful')
      end
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:root, notice: 'Logged out!')
  end
end
