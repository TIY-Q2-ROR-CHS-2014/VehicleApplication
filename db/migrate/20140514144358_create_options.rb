class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.string :option_type
      t.float :cost
      t.float :markup

      t.timestamps
    end
  end
end
