class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :media 
      t.integer :user_id

      t.timestamps
    end
  end
end
