class AddDimensionsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :lenght, :integer
    add_column :items, :width, :integer
    add_column :items, :height, :integer
    add_column :items, :weight, :integer
  end
end
