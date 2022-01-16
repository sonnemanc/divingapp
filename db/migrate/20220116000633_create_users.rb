class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :dive_time
      t.string :password_digest
      t.boolean :instructor

      t.timestamps
    end
  end
end
