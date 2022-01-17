class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
