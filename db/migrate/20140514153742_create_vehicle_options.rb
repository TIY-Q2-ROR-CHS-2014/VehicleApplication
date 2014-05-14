class CreateVehicleOptions < ActiveRecord::Migration
  def change
    create_table :vehicle_options do |t|
      t.integer :vehicle_id
      t.integer :option_id

      t.timestamps
    end
  end
end
