class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :vehicle_model
      t.integer :year
      t.string :color
      t.float :cost
      t.float :markup

      t.timestamps
    end
  end
end
