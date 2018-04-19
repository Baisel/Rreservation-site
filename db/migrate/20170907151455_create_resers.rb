class CreateResers < ActiveRecord::Migration[5.1]
  def change
    create_table :resers do |t|

      t.datetime :performance_time
      t.integer :vancancy
      t.timestamps
    end
  end
end
