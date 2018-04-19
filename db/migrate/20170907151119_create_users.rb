class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.boolean :mail_fla, default: false
      t.integer :performance_id
      t.integer :num
      t.string :auth
      t.integer :key

      t.timestamps
    end
  end
end
