class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :github_id
      t.text :description
      t.string :code
      t.string :url
      t.datetime :started_at
      t.datetime :last_updated_at
      t.integer :student_id

      t.timestamps
    end
  end
end
