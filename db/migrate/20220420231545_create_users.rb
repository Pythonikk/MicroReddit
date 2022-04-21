class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :password

      t.timestamps
    end
    add_index :users, :pseudo, unique: true
  end
end
