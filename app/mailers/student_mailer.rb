class StudentMailer < ActionMailer::Base
  default from: "team@devbud.com"

  def activation_needed_email(student)
    @student = student
    @url  = "http://localhost:3000/students/#{student.activation_token}/activate"
    mail(:to => student.email,
    :subject => "Welcome to DevBud")
  end

  def activation_success_email(student)
    @student = student
    @url  = "http://localhost:3000/login"
    mail(:to => student.email,
    :subject => "Your account is now activated")
  end

  def reset_password_email(student)
    @student = student
    @url  = edit_password_reset_url(student.reset_password_token)
    mail(:to => student.email,
    :subject => "Your password has been reset")
  end
end
