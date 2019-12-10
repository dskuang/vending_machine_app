class CreateVendingMachineTable < ActiveRecord::Migration[6.0]
  def change
    create_table :door_logs do |t|
      t.boolean :is_door_open
      t.timestamps null: false
    end 
  end
end
