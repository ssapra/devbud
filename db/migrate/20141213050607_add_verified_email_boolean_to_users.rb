class AddVerifiedEmailBooleanToUsers < ActiveRecord::Migration
  def change
    add_column :students, :verified_email, :boolean, default: false
  end
end
