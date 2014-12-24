class ActivationController < ApplicationController
  skip_before_filter :require_login
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
end
