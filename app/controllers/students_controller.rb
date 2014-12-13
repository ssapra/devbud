class StudentsController < ApplicationController
  skip_before_filter :require_login, :only => [:index, :new, :create, :activate, :verification_sent]

  def create
    @student = Student.new(student_params)
    # add student validation for .edu email address
    if @student.save
      redirect_to verification_sent_path
    else
      render 'home/index'
    end
  end

  def verification_sent
  end

  def activate
    if (@student = Student.load_from_activation_token(params[:id]))
      @student.activate!
      redirect_to(login_path, :notice => 'Student was successfully activated.')
    else
      not_authenticated
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
