class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.integer :year
      t.text :summary
      t.string :password_hash
      t.string :resume_url
      t.string :website_url
      t.string :github_url
      t.string :linkedin_url
      t.string :image_url
      t.string :portfolio_url
      t.string :stackoverflow_url
      t.string :blog_url
      t.string :dribble_url

      t.timestamps
    end
  end
end
