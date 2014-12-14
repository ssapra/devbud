class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login

  def getrequest(url)
    result = Net::HTTP.get(URI.parse(url))
    result = JSON.parse(result);
  end
  def postrequest(url)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE # You should use VERIFY_PEER in production
    request = Net::HTTP::Post.new(uri.request_uri)
    response = http.request(request)
    response = JSON.parse(response.body())
  end

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
end
