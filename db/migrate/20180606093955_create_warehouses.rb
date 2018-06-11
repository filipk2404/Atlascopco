class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.string :location
      t.string :rack
      t.string :column
      t.string :level
      t.string :row
      t.string :picking

      t.timestamps
    end
  end
end

