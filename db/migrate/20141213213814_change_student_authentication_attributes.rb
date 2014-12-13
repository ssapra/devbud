class ChangeStudentAuthenticationAttributes < ActiveRecord::Migration
  def change
    rename_column :students, :password_digest, :salt
    add_column :students, :crypted_password, :string
    add_index :students, :email, unique: true
  end
end
