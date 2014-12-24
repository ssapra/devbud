class RenameStudentToUser < ActiveRecord::Migration
  def change
    rename_table :students, :users
    add_column :users, :type, :string
  end
end
