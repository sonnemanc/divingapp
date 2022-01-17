class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :min_dive_time
      t.integer :dive_length
      t.text :ratings

      t.timestamps
    end
  end
end
