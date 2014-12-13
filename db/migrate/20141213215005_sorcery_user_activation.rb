class SorceryUserActivation < ActiveRecord::Migration
  def change
    add_column :students, :activation_state, :string, default: nil
    add_column :students, :activation_token, :string, default: nil
    add_column :students, :activation_token_expires_at, :datetime, default: nil

    add_column :students, :reset_password_token, :string, default: nil
    add_column :students, :reset_password_token_expires_at, :datetime, default: nil
    add_column :students, :reset_password_email_sent_at, :datetime, default: nil

    add_column :students, :remember_me_token, :string, default: nil
    add_column :students, :remember_me_token_expires_at, :datetime, default: nil

    add_index :students, :activation_token
    add_index :students, :remember_me_token
  end
end
