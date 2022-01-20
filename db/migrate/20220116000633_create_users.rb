class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :dive_time, default: 0
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
