class ClientsController < UsersController
  skip_before_filter :require_login, :only => [:index, :new, :create]

  def show
    @client = current_user
  end
end
