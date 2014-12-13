class SessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @student = Student.new
  end

  def create
    if @student = login(params[:email], params[:password], params[:remember])
      redirect_back_or_to(student_path(@student), notice: 'Login successful')
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
